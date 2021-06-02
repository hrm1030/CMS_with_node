var Category = require('../models/Category');
const User = require('../models/User');

exports.search = function(req, res, next) {
    Category.find({}, (err, categories) => {
        if(err) {
            console.log(err);
        } else {
            res.render('pages/user/search',{title : 'CMS | Search',session : req.session, categories : categories});
        }
    });
}

exports.search_all = function(req, res) {
    Category.find({}, (err, categories) => {
        if(err) {
            console.log(err);
        } else {
            res.json({categories : categories});
        }
    });
}
exports.get_category = function(req, res) {
    if(req.body.keyword == ''){
        Category.find({}, (err, categories) => {
            if(err) {
                console.log(err);
            } else {
                res.json({categories : categories});
            }
        });
    } else {
        Category.find({name : req.body.keyword}, (err, categories) => {
            if(err) {
                console.log(err);
            }else {
                res.json({categories : categories});
            }
        });
    }
    
}

exports.membership_update = function(req, res) {
    console.log(req.session.userid)
    var old_membership = req.session.membership;
    var today = new Date();
                        var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate()+ ' ' + today.getHours()+':'+today.getMinutes()+':'+today.getSeconds()+'.'+today.getMilliseconds();
    User.findByIdAndUpdate(req.session.userid, {$set : {
        membership : req.body.membership,
        created_at : date
    }}, (err) => {
        if(err) {
            console.log(err);
        } else {
            res.json({msg : 'success', old_membership : old_membership});
        }
    })
}