var bcrypt = require('bcryptjs');
var User = require('../models/User');

exports.search = function(req, res, next) {
    console.log(req.originalUrl);
    res.render('pages/user/search',{title : 'CMS | Search',session : req.session});
}

exports.admin = function(req, res, next) {
    User.find({}, (err, users) => {
        if(err) {
            console.log(err);
        } else {
            res.render('pages/admin/home', {title : 'CMS | Admin', session : req.session, users : users});
        }
    })
    
}