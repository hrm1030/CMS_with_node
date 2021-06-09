var Industry = require('../models/Industry');
var User = require('../models/User');
var bcrypt = require('bcryptjs');
var jwt = require('jsonwebtoken');
var path = require('path');
const multer = require("multer");
var Post = require('../models/Post');
const paypal = require('paypal-rest-sdk');

paypal.configure({
    'mode': 'sandbox', //sandbox or live
    'client_id': '####yourclientid######',
    'client_secret': '####yourclientsecret#####'
});

exports.login = function(req, res, next) {
    res.render('pages/auth/login', {title : 'CMS | Login', errors : [], session : req.session});
}

exports.register = function(req, res, next) {
    Industry.find({}, (err, industries) => {
        if(err) {
            res.status(500).send(err);
        } else {
            res.render('pages/auth/register', {title : "CMS | Register", industries : industries, errors : [], session : req.session});
        }
    })
}

exports.signup = function(req, res, next) {
    var name = req.body.name;
    var surname = req.body.surname;
    var phone = req.body.phone;
    var email = req.body.email;
    var password = req.body.password;
    var confirm_password = req.body.repassword;
    var errors = Array();
    if(name == '') {
        errors.push('Name is required');
    } else {
        if(name.length < 3) {
            errors.push('Name must be at least 3 characters.');
        }
    }

    if(surname == '') {
        errors.push('Surname is required.');
    } else {
        if(surname.length < 3) {
            errors.push('Surname must be at least 3 characters.')
        }
    }
    
    if(phone == '') {
        errors.push('Phone Number is required.');
    }

    if(password == '') {
        errors.push('Password is required.');
    } else {
        if(password.length < 6) {
            errors.push('Password must be at least 6 characters.');
        }
    }

    if(confirm_password == '') {
        errors.push('Re-password is required.');
    } else {
        if(confirm_password.length < 6) {
            errors.push('Re-Password must be at least 6 characters.');
        }
    }

    if(email == '') {
        errors.push('Email is required.');
    } else {
        User.findOne({
            email : email
        }, (err, user) => {
            if(err) {
                console.log(err);
            } else {
                if(user != null) {
                    console.log('This email already exists')
                    errors.push('This email already exists.');
                    Industry.find({}, (err, industries) => {
                        if(err) {
                            res.status(500).send(err);
                        } else {
                            res.render('pages/auth/register', {title : "CMS | Register", industries : industries, errors : errors, session : req.session});
                        }
                    })
                } else {
                    if(password === confirm_password) {
                        console.log(phone)
                        var hashedPassword = bcrypt.hashSync(req.body.password, 8);
                        var today = new Date();
                        var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate()+ ' ' + today.getHours()+':'+today.getMinutes()+':'+today.getSeconds()+'.'+today.getMilliseconds();
                        User.create({
                            name : name,
                            surname : surname,
                            phone : '+'+phone,
                            email : email,
                            password : hashedPassword,
                            membership : 0,
                            left_membership : 0,
                            card_number : '',
                            expire_month : 0,
                            expore_year : 0,
                            cvc : 0,
                            created_at : today.toUTCString(),
                            started_at : '',
                            permission : 2,
                            photo : 'avatar.png',
                            introduction : 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.',
                            state : 0,
                            industry : req.body.industry
                        }, (err, user) => {
                            if(err) {
                                console.log(err)
                            } else {
                                res.redirect('/auth/login');
                            }
                        })
                    }else {
                        errors.push('Password is not confirmed.');
                        Industry.find({}, (err, industries) => {
                            if(err) {
                                res.status(500).send(err);
                            } else {
                                res.render('pages/auth/register', {title : "CMS | Register", industries : industries, errors : errors, session : req.session});
                            }
                        })
                    }
                    
                }
            }
        })
    }

    if(errors.length > 0) {
        console.log(errors);
        Industry.find({}, (err, industries) => {
            if(err) {
                res.status(500).send(err);
            } else {
                res.render('pages/auth/register', {title : "CMS | Register", industries : industries, errors : errors, session : req.session});
            }
        })
    }
}

exports.signin = function(req, res, next) {
    var email = req.body.email;
    var password = req.body.password;

    if(email.length == 0) {
        res.render('pages/auth/login', {title : 'CMS | Login', errors : "Email is required.", session : req.session})
    } else {
        User.findOne({
            email : email
        }, (err, user) => {
            if(err) {
                console.log(err);
            } else {
                if(user == null){
                    res.render('pages/auth/login', {title : 'CMS | Login', errors : "Please enter your email exactly. ", session : req.session})
                } else{
                    if(password.length ==0) {
                        res.render('pages/auth/login', {title : 'CMS | Login', errors : "Password is required.", session : req.session})
                    }else{
                        var passwordIsValid = bcrypt.compare(password, user.password);
                        if (!passwordIsValid) {
                            res.render('pages/auth/login', {title : 'CMS | Login', errors : "Please enter your password exactly.", session : req.session})
                        }else {
                            var token = jwt.sign({ id: user._id }, 'cmssecret', {
                                expiresIn: 86400 // expires in 24 hours
                                });
                                console.log(token+'************** Token****************')
                            req.session.userid = user._id;
                            req.session.name = user.name;
                            req.session.surname = user.surname;
                            req.session.phone = user.phone;
                            req.session.email = user.email;
                            req.session.permission = user.permission;
                            req.session.membership = user.membership;
                            req.session.created_at = user.created_at;
                            req.session.started_at = user.started_at;
                            req.session.state = user.state;
                            req.session.photo = user.photo;
                            req.session.introduction = user.introduction;
                            req.session.left_membership = user.left_membership;
                            req.session.industry = user.industry;
                            req.session.card_number = user.card_number;
                            req.session.expire_month = user.expire_month;
                            req.session.expore_year = user.expire_year;
                            req.session.cvc = user.cvc;
                            req.session.token = token;
                            var today = new Date();
                            var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate()+ ' ' + today.getHours()+':'+today.getMinutes()+':'+today.getSeconds()+'.'+today.getMilliseconds();
                            
                            var currnet_time = new Date(date).getTime();
                            var created_time = new Date(user.created_at).getTime();
                            var started_time = new Date(user.started_at).getTime();
                            console.log(new Date('2021-06-30').getTime() - new Date('2021-05-31').getTime())
                            
                            /** Monthly pay */
                            if(req.session.membership > 1)
                            {
                                if((currnet_time - started_time) > 2592000000)
                                {
                                    if(req.session.membership == 2)
                                    {
                                        amount = 20;
                                    }
                                    if(req.session.membership == 3)
                                    {
                                        amount = 25;
                                    }
                                    if(req.session.membership == 4)
                                    {
                                        amount = 30;
                                    }
                                    // var split_cardnum = req.session.card_number.split(' ');
                                    // var cardnumber = '';
                                    // for(var i = 0 ; i < split_cardnum.length ; i ++) 
                                    // {
                                    //     cardnumber = cardnumber + split_cardnum[i];
                                    // }
                                    
                                    
                                    // paypal.payment.create({
                                    //     "intent": "sale",
                                    //     "payer": {
                                    //         "payment_method": "credit_card",
                                    //         "funding_instruments": [{
                                    //             "credit_card": {
                                    //                 "type": "visa",
                                    //                 "number": cardnumber,
                                    //                 "expire_month": req.session.expire_month,
                                    //                 "expire_year": req.session.expire_year,
                                    //                 "cvv2": req.session.cvc,
                                    //                 "first_name": req.session.name,
                                    //                 "last_name": req.session.surname,
                                    //                 "billing_address": {
                                    //                     "line1": "52 N Main ST",
                                    //                     "city": "Johnstown",
                                    //                     "state": "OH",
                                    //                     "postal_code": "43210",
                                    //                     "country_code": "US"
                                    //                 }
                                    //             }
                                    //         }]
                                    //     },
                                    //     "transactions": [{
                                    //         "amount": {
                                    //             "total": ammount,
                                    //             "currency": "USD",
                                    //             "details": {
                                    //                 "subtotal": "5",
                                    //                 "tax": "1",
                                    //                 "shipping": "1"
                                    //             }
                                    //         },
                                    //         "description": "This is the payment transaction description."
                                    //     }]
                                    // }, function (error, payment) {
                                    //     if (error) {
                                    //         throw error;
                                    //     } else {
                                    //         console.log("Create Payment Response");
                                    //         console.log(payment);
                                    //         User.findByIdAndUpdate(req.session.userid, { $set : {
                                    //             started_at : new Date(new Date(user.started_at).getTime()+2592000000)
                                    //         }}, (err) => {
                                    //             if(err) {
                                    //                 console.log(err); 
                                    //             } else {
                                    //                 req.session.started_at = new Date(new Date(user.started_at).getTime()+2592000000);
                                    //                 if(user.permission == 1) {
                                    //                     res.redirect('/admin');
                                    //                 }else {
                                    //                     res.redirect('/');
                                    //                 }
                                    //             }
                                    //         });
                                    //     }
                                    // });
                                }
                            }
                            
                            /** End */

                            if((currnet_time - created_time) > 596793842) {
                                User.findByIdAndUpdate(user._id, {$set : {
                                    left_membership : user.membership,
                                    created_at : new Date(new Date(user.created_at).getTime()+596793842)
                                }}, (err) => {
                                    if(err) {
                                        console.log(err);
                                    } else {
                                        req.session.left_membership = user.membership;
                                        req.session.created_at = new Date(new Date(user.created_at).getTime()+596793842);
                                        // req.session.save();
                                        if(user.permission == 1) {
                                            res.redirect('/admin');
                                        }else {
                                            res.redirect('/');
                                        }
                                    }
                                });
                            } else {
                                if(user.permission == 1) {
                                    res.redirect('/admin');
                                }else {
                                    res.redirect('/');
                                }
                            }
                            
                            
                        }
                    }
                    
                }
            }
        })
    }
}

exports.profile = function(req, res, next) {
    console.log(req.session);
    Post.find({poster_id : req.session.userid}, (err, posts)=> {
        if(err) {
            console.log(err);
        } else {
            var post_cnt = posts.length;
            var like_cnt = 0;
            var dislike_cnt = 0;
            for(var i = 0 ; i < post_cnt ; i ++) 
            {
                like_cnt += posts[i].like;
            }
            for(var i = 0 ; i < post_cnt ; i ++) 
            {
                dislike_cnt += posts[i].dislike;
            }
            res.render('pages/user/profile', {title : 'CMS | Profile', session : req.session, post_cnt : post_cnt, like_cnt: like_cnt, dislike_cnt : dislike_cnt});
        }
    })
    
}

var storage = multer.diskStorage({
    destination: function (req, file, cb) {
  
        // Uploads is the Upload_folder_name
        cb(null, "public/uploads/users")
    },
    filename: function (req, file, cb) {
      cb(null, req.session.userid +".jpg")
    }
})
       
  // Define the maximum size for uploading
  // picture i.e. 1 MB. it is optional
const maxSize = 10 * 1000 * 1000;

var upload = multer({ 
                storage: storage,
                limits: { fileSize: maxSize },
                fileFilter: function (req, file, cb){

                    // Set the filetypes, it is optional
                    var filetypes = /jpeg|jpg|png/;
                    var mimetype = filetypes.test(file.mimetype);

                    var extname = filetypes.test(path.extname(
                                file.originalname).toLowerCase());
                    
                    if (mimetype && extname) {
                        return cb(null, true);
                    }
                    
                    cb("Error: File upload only supports the "
                            + "following filetypes - " + filetypes);
                    } 

                // mypic is the name of file attribute
            }).single("photo");

exports.profile_save = function(req, res) {
    console.log(req.body)
    upload(req,res,function(err) {

        if(err) {
    
            // ERROR occured (here it can be occured due
            // to uploading image of size greater than
            // 1MB or uploading different file type)
            res.send(err)
        }
        else {
            req.session.photo = req.session.userid+'.jpg';
            req.session.introduction = req.body.introduction;
            // SUCCESS, image successfully uploaded
            User.findByIdAndUpdate(req.session.userid, {$set : {
                introduction : req.body.introduction,
                photo : req.session.userid+'.jpg'
            }}, (err) => {
                if(err) {
                    console.log(err);
                } else {
                    res.redirect('/auth/profile');
                }
            });
            
        }
    });
    
}


exports.photo_generate = function(req, res,next) {
    res.render('pages/user/photo_generate', {layout : false});
}

  

exports.logout = function(req, res, next) {
    req.session.destroy((err) => {
        console.log(err)
    });
    res.redirect('/');
}