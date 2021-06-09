var User = require('../models/User');
var Category = require('../models/Category');
var Industry = require('../models/Industry');
var Post = require('../models/Post');
exports.index = function(req, res, next) {
    User.find({}, (err, users) => {
        if(err) {
            console.log(err);
        } else {
            Category.find({}, (err, categories) => {
                if(err) {
                    console.log(err);
                } else {
                    Industry.find({}, (err, industries) => {
                        if(err) {
                            console.log(err);
                        } else {
                            Post.find({}, (err, posts) => {
                                if(err) {
                                    console.log(err)
                                } else {
                                    res.render('pages/admin/home', {title : 'CMS | Admin', session : req.session, users : users, categories : categories, industries : industries, posts : posts});
                                }
                            });                            
                        }
                    });    
                }
            });
        }
    });
}

exports.change_state = function(req, res) {
    User.findByIdAndUpdate(req.body.user_id, {$set : {
        state : req.body.state
    }}, (err, user) => {
        if(err) {
            console.log(err)
        } else {
            res.json({ msg : 'success'});
        }
    });
}

exports.user_delete = function(req, res) {
    User.findByIdAndDelete(req.body.user_id, (err) => {
        if(err) {
            console.log(err);
        } else {
            res.json({ msg : 'success'});
        }
    })
}

exports.category_save = function(req, res) {
    var category_name = req.body.category;
    var cat_id = req.body.cat_id;
    console.log(req.body)
    var category;
    if(cat_id == '') {
        Category.create({
            name : category_name
        }, (err, category)=> {
            if(err) {
                console.log(err);
            } else {
                res.json({msg: 'save', category: category});
            }
        })
    } else {
        Category.findByIdAndUpdate(cat_id, {$set : {
            name : category_name
        }}, (err) => {
            if(err) {
                console.log(err);
            } else {
                category = {
                    _id : cat_id,
                    name : category_name
                }
                res.json({msg:'update', category : category})
            }
        })
    }
}

exports.category_delete = function(req, res) {
    var cat_id = req.body.cat_id;
    console.log(cat_id)
    var category;
    Category.findByIdAndDelete(cat_id, (err) => {
        if(err) {
            console.log(err);
        } else {
            category = {
                _id : cat_id
            }
            res.json({category : category});
        }
    })
}

exports.industry_save = function(req, res) {
    var industry_name = req.body.industry;
    var industry_id = req.body.industry_id;
    console.log(req.body)
    var industry;
    if(industry_id == '') {
        Industry.create({
            name : industry_name
        }, (err, industry)=> {
            if(err) {
                console.log(err);
            } else {
                res.json({msg: 'save', industry: industry});
            }
        })
    } else {
        Industry.findByIdAndUpdate(industry_id, {$set : {
            name : industry_name
        }}, (err) => {
            if(err) {
                console.log(err);
            } else {
                industry = {
                    _id : industry_id,
                    name : industry_name
                }
                res.json({msg:'update', industry : industry})
            }
        })
    }
}

exports.industry_delete = function(req, res) {
    var industry_id = req.body.industry_id;
    console.log(industry_id)
    var industry;
    Industry.findByIdAndDelete(industry_id, (err) => {
        if(err) {
            console.log(err);
        } else {
            industry = {
                _id : industry_id
            }
            res.json({industry : industry});
        }
    })
}

exports.post_delete = function(req, res) {
    Post.findByIdAndDelete(req.body.post_id, (err) => {
        if(err) {
            console.log(err);
        } else {
            res.json({ msg : 'success'});
        }
    })
}