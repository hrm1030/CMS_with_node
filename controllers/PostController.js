var Post = require('../models/Post');
exports.save = function(req, res, next) {
    Post.create({
        category_id : req.body.category_id,
        content : req.body.content
    }, (err, post) => {
        if(err){
            res.status(500).send(err);
        } else {
            res.status(200).send({ post : post });
        }
    })
}