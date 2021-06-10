var Post = require('../models/Post');
var Category = require('../models/Category');
const multer = require("multer");
const User = require('../models/User');
var path = require('path');
var formidable = require('formidable');
var fs = require('fs');

exports.save = function(req, res, next) {
    var today = new Date();
    var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate()+ ' ' + today.getHours()+':'+today.getMinutes()+':'+today.getSeconds()+'.'+today.getMilliseconds();
    console.log(req.body)
    Post.create({
        category_id : req.body.category_id,
        category : req.body.categoryname,
        title : req.body.title,
        content : req.body.content,
        poster : req.body.fullname,
        poster_id : req.session.userid,
        poster_email : req.body.email,
        poster_phone : req.body.phone,
        created_at : date,
        shared: 0,
        image : req.body.file
    }, (err, post) => {
        if(err){
            console.log(err)
        } else {
            res.json({post:post});
        }
    });
}

exports.filesupload = function(req, res) {
    var form = new formidable.IncomingForm();
    // console.log(req);
    form.parse(req);
    var image_name = 'post_'+req.session.userid+'_'+new Date().getFullYear()+new Date().getMonth()+new Date().getDate() + new Date().getHours()+new Date().getMinutes() + new Date().getSeconds() + new Date().getMilliseconds() +".jpg";

    form.on('fileBegin', function (name, file){
        console.log(name)
        file.path = 'public/uploads/posts/' + image_name;
    });

    form.on('file', function (name, file){
        console.log('Uploaded ' + image_name);
    });

    res.json({msg:'success', image_name : image_name});
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

exports.list = function(req, res) {
    var category_id = req.query.category;
    Post.find({category_id : category_id}, (err, posts)=> {
        if(err) {
            console.log(err);
        } else {
            Category.find({}, (err, categories) => {
                if(err) {
                    console.log(err);
                } else {
                    res.render('pages/user/post/list', {title : 'CMS | Post List', session : req.session, posts: posts, categories : categories, selected_cat_id : category_id});
                }
            })
            
        }
    })
}

exports.selected_category = function(req, res) {
    var cat_id = req.body.cat_id;
    Post.find({category_id : cat_id}, (err, posts) => {
        if(err) {
            console.log(err);
        } else {
            res.json({posts : posts});
        }
    }).sort({ created_at : -1 });
}

exports.view = function(req, res) {
    var post_id = req.query.post;
    Category.find({}, (err, categories) => {
        if(err) {
            console.log(err);
        } else {
            Post.findById(req.query.post, (err, post) => {
                if(err) {
                    console.log(err);
                } else {
                    res.render('pages/user/post/view', {title : 'CMS | Post View', post_id : post_id, session : req.session, categories : categories, post : post});;
                }
            })
            
        }
    });
    
}

exports.view_ajax = function(req, res) {
    Post.findById(req.body.post_id, (err, post) => {
        if (err) {
            console.log(err);
        } else {
            res.json({ post : post, session : req.session});
        }
    })
}

exports.edit = function(req, res) {
    Category.find({}, (err, categories) => {
        if(err) {
            console.log(err);
        } else {
            res.render('pages/user/post/edit',{ title : 'CMS | Post Edit', session : req.session, categories : categories});
        }
    })
};
