var formidable = require('formidable');
var Jimp = require('jimp');
const Post = require('../models/Post');
const User = require('../models/User');
exports.logo_upload = function(req, res) {
    var form = new formidable.IncomingForm();
    // console.log(req);
    form.parse(req);
    var image_name = 'logo_'+req.session.userid+'_'+new Date().getFullYear()+new Date().getMonth()+new Date().getDate() + new Date().getHours()+new Date().getMinutes() + new Date().getSeconds() + new Date().getMilliseconds() +".jpg";

    form.on('fileBegin', function (name, file){
        console.log(name)
        file.path = 'public/uploads/logos/' + image_name;
    });

    form.on('file', function (name, file){
        console.log('Uploaded ' + image_name);
    });

    res.json({msg:'success', image_name : image_name});
}

exports.image_jimp = function(req, res) {
    console.log(req.query)
    Jimp.read(`public/uploads/posts/${req.query.image}`, (err, img) => {
        if(err) {
            console.log(err);
        } else {
            Jimp.read(`public/uploads/logos/${req.query.logo}`, (err, logo) => {
                if(err) {
                    console.log(err);
                } else {
                    img.resize(600, 450);
                    img.blit(logo, 0, 360);
                    var current_time = new Date().getFullYear()+''+new Date().getMonth()+''+new Date().getDate()+''+new Date().getHours()+''+new Date().getMinutes()+''+new Date().getSeconds()+''+new Date().getMilliseconds();
                    var share_img = 'share_'+req.session.userid+'_'+current_time+'.png';
                    img.write('public/uploads/shares/'+share_img);
                    res.json({ msg : 'success', share_img : share_img});
                }
            })
        }
    });
}

exports.share = function(req, res) {
    User.findById(req.session.userid, (err, user) => {
        if(err) {
            console.log(err);
        } else {
            User.findByIdAndUpdate(user._id, {$set: {
                left_membership : user.left_membership - 1
            }}, (err) => {
                if(err) {
                    console.log(err);
                } else {
                    Post.findById(req.query.post_id, (err, post) => {
                        if(err) {
                            console.log(err);
                        } else {
                            Post.findByIdAndUpdate(post._id, { $set : {
                                shared : post.shared + 1
                            }}, (err) => {
                                if(err) {
                                    console.log(err);
                                } else {
                                    req.session.left_membership = user.left_membership - 1;
                                    res.json({msg : 'success', left_membership : req.session.left_membership, shared : post.shared+1});
                                }
                            })
                        }
                    })
                }
            });
        }
    });
}