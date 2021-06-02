var Post = require('../models/Post');
exports.save = function(req, res, next) {
    var today = new Date();
    var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate()+ ' ' + today.getHours()+':'+today.getMinutes()+':'+today.getSeconds()+'.'+today.getMilliseconds();
    Post.create({
        category_id : req.body.category_id,
        category : req.body.category,
        content : req.body.content,
        poster : req.session.name + ' ' + req.session.surname,
        created_at : date
    }, (err, post) => {
        if(err){
            console.log(err)
        } else {
            res.json({ post : post})
        }
    })
}

exports.get = function(req, res) {
    Post.find({}, (err, posts) => {
        if(err) {
            console.log(err);
        }else {
            res.json({posts : posts});
        }
    })
}

exports.preview = function(req, res) {
    Post.findById(req.body.post_id, (err, post) => {
        if(err) {
            console.log(err);
        } else {
            res.json({ post : post});
        }
    })
}