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
                    var logo_w = logo.bitmap.width;
                    var logo_h = logo.bitmap.height;
                    var img_w = img.bitmap.width;
                    var img_h = img.bitmap.height;

                    logo.resize(150, 150*(logo_h/logo_w));
                    img.resize(600, 600*(img_h/img_w));
                    var new_img_h = img.bitmap.height;
                    var new_img_w = img.bitmap.width;
                    var new_logo_h = logo.bitmap.height;
                    var new_logo_w = logo.bitmap.width;
                    var logo_position = req.query.logo_position;
                    console.log((new_img_w - new_logo_w));

                    if(logo_position === 'bl')
                    {
                        img.blit(logo, 0, 0.85*new_img_h);
                    }
                    if(logo_position === 'tl')
                    {
                        img.blit(logo, 0, 0);
                    }
                    if(logo_position === 'br')
                    {
                        img.blit(logo, 350, 0.85*new_img_h);
                    }
                    if(logo_position === 'tr')
                    {
                        img.blit(logo, 350, 0);
                    }
                    
                    var current_time = new Date().getFullYear()+''+new Date().getMonth()+''+new Date().getDate()+''+new Date().getHours()+''+new Date().getMinutes()+''+new Date().getSeconds()+''+new Date().getMilliseconds();
                    var share_img = 'share_'+req.session.userid+'_'+current_time+'.png';
                    img.write('public/uploads/shares/'+share_img);
                    res.json({ msg : 'success', share_img : share_img});
                }
            })
        }
    });
}

exports.image_jimp_position_change = function(req, res) {
    console.log(req.query)
    Jimp.read(`public/uploads/posts/${req.query.image}`, (err, img) => {
        if(err) {
            console.log(err);
        } else {
            Jimp.read(`public/uploads/logos/${req.query.logo}`, (err, logo) => {
                if(err) {
                    console.log(err);
                } else {
                    var logo_w = logo.bitmap.width;
                    var logo_h = logo.bitmap.height;
                    var img_w = img.bitmap.width;
                    var img_h = img.bitmap.height;

                    logo.resize(150, 150*(logo_h/logo_w));
                    img.resize(600, 600*(img_h/img_w));
                    var new_img_h = img.bitmap.height;
                    var new_img_w = img.bitmap.width;
                    var new_logo_h = logo.bitmap.height;
                    var new_logo_w = logo.bitmap.width;
                    var logo_position = req.query.logo_position;
                    console.log((new_img_w - new_logo_w));
                    if(logo_position === 'bl')
                    {
                        img.blit(logo, 0, 0.85*new_img_h);
                    }
                    if(logo_position === 'tl')
                    {
                        img.blit(logo, 0, 0);
                    }
                    if(logo_position === 'br')
                    {
                        img.blit(logo, 350, 0.85*new_img_h);
                    }
                    if(logo_position === 'tr')
                    {
                        img.blit(logo, 350, 0);
                    }
                    
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
            User.findByIdAndUpdate(req.session.userid, {$set: {
                left_membership : user.left_membership - 1,
                shared_cnt : user.shared_cnt + 1
            }}, (err) => {
                if(err) {
                    console.log(err);
                } else {
                    req.session.shared_cnt = user.shared_cnt + 1;
                    Post.findById(req.query.post_id, (err, post) => {
                        if(err) {
                            console.log(err);
                        } else {
                            Post.findByIdAndUpdate(req.query.post_id, { $set : {
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