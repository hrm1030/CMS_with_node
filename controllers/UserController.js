var Category = require('../models/Category');
const User = require('../models/User');
const paypal = require('paypal-rest-sdk');

paypal.configure({
    'mode': 'sandbox', //sandbox or live
    'client_id': '####yourclientid######',
    'client_secret': '####yourclientsecret#####'
});

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
    var old_membership = req.session.membership;
    var today = new Date();
    var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate()+ ' ' + today.getHours()+':'+today.getMinutes()+':'+today.getSeconds()+'.'+today.getMilliseconds();
    User.findByIdAndUpdate(req.session.userid, {$set : {
        membership : req.body.membership,
        left_membership : req.body.membership,
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
            //                 "currency": "USD",
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