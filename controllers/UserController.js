var Category = require('../models/Category');
const User = require('../models/User');
const paypal = require('paypal-rest-sdk');
const Faq = require('../models/Faq');
const RecommendCategory = require('../models/RecommendCategory');
const Support = require('../models/Support');

paypal.configure({
    'mode': 'sandbox', //sandbox or live
    'client_id': '####yourclientid######',
    'client_secret': '####yourclientsecret#####'
});

exports.info = function(req, res) {
    res.render('pages/user/info', {title : 'CMS | Info', session : req.session});
}

exports.training = function(req, res) {
    res.render('pages/user/training', {title : 'CMS | Training', session : req.session});
}

exports.support = function(req, res) {
    res.render('pages/user/support', {title : 'CMS | Support', session : req.session});
}

exports.support_save = function(req, res) {
    Support.create({
        name : req.body.name,
        email : req.body.email,
        content : req.body.content
    }, (err) => {
        if(err) {
            console.log(err);
        } else {
            res.redirect('/support');
        }
    })
}

exports.search = function(req, res, next) {
    Category.find({}, (err, categories) => {
        if(err) {
            console.log(err);
        } else {
            res.render('pages/user/search', {title : 'CMS | Search', session : req.session, categories : categories});
        }
    });
}

exports.faq = function(req, res) {
    Category.find({}, (err, categories) => {
        if(err) {
            console.log(err);
        } else {
            
                Faq.find({}, (err, faqs) => {
                    if(err) {
                        console.log(err);
                    } else {
                        res.render('pages/user/faq', {title : 'CMS | FAQ', session : req.session, faqs : faqs, categories : categories});
                    }
                })
            
        }
    })
    
}

exports.get_faqs = function(req, res) {
    Faq.find({category : req.body.category}, (err, faqs) => {
        if(err) {
            console.log(err);
        } else {
            res.json({ faqs : faqs});
        }
    })
}

exports.recommend_category = function(req, res) {
    Category.find({}, (err, categories) => {
        if(err) {
            console.log(err);
        } else {
            res.render('pages/user/recommend_category', { title : 'CMS | Recommend Category', session : req.session, categories : categories});
        }
    })
    
}

exports.recommend_category_save = function(req, res) {
    RecommendCategory.create({
        category : req.body.category,
        email : req.body.email,
        content : req.body.content
    }, (err) => {
        if(err) {
            console.log(err);
        } else {
            res.redirect('/recommend_category');
        }
    })
}

exports.ask_for_post = function(req, res) {
    Category.find({}, (err, categories) => {
        if(err) {
            console.log(err);
        } else {
            res.render('pages/user/ask_for_post', {title : 'CMS | Ask for a post', session : req.session, categories : categories});
        }
    });    
}

exports.ask_for_post_save = function(req, res) {
    Faq.create({
        title : req.body.title,
        category : req.body.category,
        email : req.body.email,
        content : req.body.content
    }, (err) => {
        if(err) {
            console.log(err);
        } else {
            User.findById(req.session.userid, (err, user) => {
                if(err) {
                    console.log(err);
                } else {
                    User.findByIdAndUpdate(req.session.userid, { $set : {
                        ask : user.ask - 1
                    }}, (err) => {
                        if(err) {
                            console.log(err);
                        } else {
                            req.session.ask = user.ask - 1;
                            res.redirect('/faq');
                        }
                    });
                }
            })
            
        }
    })
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
        Category.find({}, (err, categories) => {
            if(err) {
                console.log(err);
            }else {
                var new_categories = Array();
                for(var i = 0 ; i < categories.length ; i ++) 
                {
                    if(categories[i].name.toLowerCase() == req.body.keyword.toLowerCase()) 
                    {
                        new_categories.push(categories[i]);
                    }
                }
                res.json({categories : new_categories});
            }
        });
    }
    
}

exports.membership_update = function(req, res) {
    if(req.body.membership == 1) {
        var ask = 0;
    }
    if(req.body.membership == 2 || req.body.membership == 3) {
        var ask = 1;
    }
    if(req.body.membership == 1) {
        var ask = 2;
    }
    var old_membership = req.session.membership;
    var today = new Date();
    var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate()+ ' ' + today.getHours()+':'+today.getMinutes()+':'+today.getSeconds()+'.'+today.getMilliseconds();
    User.findByIdAndUpdate(req.session.userid, {$set : {
        membership : req.body.membership,
        left_membership : req.body.membership,
        ask : ask,
        created_at : date,
        card_number : req.body.cardnumber,
        expire_month : req.body.month,
        expire_year : req.body.year,
        cvc : req.body.cvc,
        started_at : date
    }}, (err) => {
        if(err) {
            console.log(err);
        } else {
            req.session.membership = req.body.membership;
            req.session.left_membership = req.body.membership;
            req.session.card_number = req.body.cardnumber;
            req.session.expire_month = req.body.month;
            req.session.expire_year = req.body.year;
            req.session.cvc = req.body.cvc;
            console.log(req.body)
            // if(req.body.membership > 1) {
            //     var split_cardnum = req.body.cardnumber.split(' ');
            //     var cardnumber = '';
            //     for(var i = 0 ; i < split_cardnum.length ; i ++) 
            //     {
            //         cardnumber = cardnumber + split_cardnum[i];
            //     }
                
            //     var fullname_arr = req.body.fullname.split(' ');
            //     var firstname = fullname_arr[0];
            //     var lastname = fullname_arr[1];
            //     paypal.payment.create({
            //         "intent": "sale",
            //         "payer": {
            //             "payment_method": "credit_card",
            //             "funding_instruments": [{
            //                 "credit_card": {
            //                     "type": "visa",
            //                     "number": cardnumber,
            //                     "expire_month": req.body.month,
            //                     "expire_year": req.body.year,
            //                     "cvv2": req.body.cvc,
            //                     "first_name": firstname,
            //                     "last_name": lastname,
            //                     "billing_address": {
            //                         "line1": "52 N Main ST",
            //                         "city": "Johnstown",
            //                         "state": "OH",
            //                         "postal_code": "43210",
            //                         "country_code": "US"
            //                     }
            //                 }
            //             }]
            //         },
            //         "transactions": [{
            //             "amount": {
            //                 "total": req.body.ammount,
            //                 "currency": "EUR",
            //                 "details": {
            //                     "subtotal": "5",
            //                     "tax": "1",
            //                     "shipping": "1"
            //                 }
            //             },
            //             "description": "This is the payment transaction description."
            //         }]
            //     }, function (error, payment) {
            //         if (error) {
            //             throw error;
            //         } else {
            //             console.log("Create Payment Response");
            //             console.log(payment);
            //         }
            //     });
            // }
            
            res.json({msg : 'success', old_membership : old_membership, date: date});
               
            
        }
    })
}