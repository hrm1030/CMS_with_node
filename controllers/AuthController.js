var Industry = require('../models/Industry');
var User = require('../models/User');
var bcrypt = require('bcryptjs');
var jwt = require('jsonwebtoken');
var path = require('path');
const multer = require("multer");
var Post = require('../models/Post');
var fs = require('fs');
const braintree = require("braintree");
var nodemailer = require('nodemailer');
const smtpTransport = require('nodemailer-smtp-transport');

const master_email = 'maksim.glazunov2020@gmail.com';
const master_password = '112233@Maksim';

var transporter = nodemailer.createTransport(smtpTransport({
    service: 'gmail',
    auth: {
        user: `${master_email}`,
        pass: `${master_password}`
    }
}));

const gateway = new braintree.BraintreeGateway({
  environment: braintree.Environment.Sandbox,
  merchantId: "s4v9y5nc2tyf46xt",
  publicKey: "5fb9srb4qzz2gdkn",
  privateKey: "dce4bafe144194b6e8896116c0dcb63b"
});

exports.login = function (req, res, next) {
    console.log(req.url)
    res.render('pages/auth/login', { title: 'CMS | Login', errors: [], session: req.session, recent_url : req.url });
}

exports.register = function (req, res, next) {
    Industry.find({}, (err, industries) => {
        if (err) {
            res.redirect('/error');
        } else {
            res.render('pages/auth/register', { title: "CMS | Register", industries: industries, session: req.session, recent_url : req.url });
        }
    })
}

exports.forgotpassword = function (req, res) {
    res.render('pages/auth/forgotpassword', { title: 'CMS | Forgot Password', session: req.session, recent_url : req.url});
}

exports.signup = function (req, res, next) {
    var name = req.body.name;
    var surname = req.body.surname;
    var phone = req.body.phone;
    var email = req.body.email;
    var password = req.body.password;
    var confirm_password = req.body.repassword;
    var errors = Array();
    if (name == '') {
        errors.push('Name is required');
    } else {
        if (name.length < 3) {
            errors.push('Name must be at least 3 characters.');
        }
    }

    if (surname == '') {
        errors.push('Surname is required.');
    } else {
        if (surname.length < 3) {
            errors.push('Surname must be at least 3 characters.')
        }
    }

    if (phone == '') {
        errors.push('Phone Number is required.');
    }

    if (password == '') {
        errors.push('Password is required.');
    } else {
        if (password.length < 6) {
            errors.push('Password must be at least 6 characters.');
        }
    }

    if (confirm_password == '') {
        errors.push('Re-password is required.');
    } else {
        if (confirm_password.length < 6) {
            errors.push('Re-Password must be at least 6 characters.');
        }
    }

    if (email == '') {
        errors.push('Email is required.');
        res.json({errors : errors})
    } else {
        User.findOne({
            email: email
        }, (err, user) => {
            if (err) {
                console.log(err);
            } else {
                if (user) {
                    if(user.state != 0)
                    {
                        console.log('This email already exists');
                        errors.push('This email already exists.');
                        res.json({ errors: errors });
                    } else {
                        User.findByIdAndDelete(user._id, (err) => {
                            if(err) {
                                console.log(err);
                                res.redirect('/error');
                            } else {
                                if (password === confirm_password) {
                                    console.log(phone)
                                    var hashedPassword = bcrypt.hashSync(req.body.password, 8);
                                    var today = new Date();
                                    User.create({
                                        language : req.body.language,
                                        name: name,
                                        surname: surname,
                                        phone: phone,
                                        email: email,
                                        password: hashedPassword,
                                        membership: 0,
                                        left_membership: 0,
                                        ask: 0,
                                        card_number: '',
                                        expire_month: 0,
                                        expore_year: 0,
                                        cvc: 0,
                                        created_at: today.toUTCString(),
                                        started_at: '',
                                        permission: 2,
                                        photo: 'avatar.png',
                                        introduction: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.',
                                        state: 0,
                                        industry: req.body.industry,
                                        shared_cnt: 0,
                                    }, (err, user) => {
            
                                        if (err) {
                                            console.log(err)
                                            res.redirect('/error');
                                        } else {
                                            fs.copyFile('public/uploads/users/avatar.png', 'public/uploads/users/' + user._id + '.png', (err) => {
                                                if (err) {
                                                    console.log(err);
                                                    res.redirect('/error');
                                                } else {
                                                    res.json({ msg: 'success', errors: [], user_id: user._id });
                                                }
                                            });
                                        }
                                    })
                                } else {
                                    errors.push('Password is not confirmed.');
                                    res.json({ errors: errors });
                                }
                            }
                        })
                        
                    }
                } else {
                    if (password === confirm_password) {
                        console.log(phone)
                        var hashedPassword = bcrypt.hashSync(req.body.password, 8);
                        var today = new Date();
                        User.create({
                            language : req.body.language,
                            name: name,
                            surname: surname,
                            phone: phone,
                            email: email,
                            password: hashedPassword,
                            membership: 0,
                            left_membership: 0,
                            ask: 0,
                            card_number: '',
                            expire_month: 0,
                            expore_year: 0,
                            cvc: 0,
                            created_at: today.toUTCString(),
                            started_at: '',
                            permission: 2,
                            photo: 'avatar.png',
                            introduction: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.',
                            state: 0,
                            industry: req.body.industry,
                            shared_cnt: 0,
                        }, (err, user) => {

                            if (err) {
                                console.log(err)
                                res.redirect('/error');
                            } else {
                                fs.copyFile('public/uploads/users/avatar.png', 'public/uploads/users/' + user._id + '.png', (err) => {
                                    if (err) {
                                        console.log(err);
                                        res.redirect('/error');
                                    } else {
                                        res.json({ msg: 'success', errors: [], user_id: user._id });
                                    }
                                });
                            }
                        })
                    } else {
                        errors.push('Password is not confirmed.');
                        res.json({ errors: errors });
                    }

                }
            }
        })
    }
}

exports.membership_save = function (req, res) {
    if (req.body.membership > 1) {
        var split_cardnum = req.body.cardnumber.split(' ');
        var cardnumber = '';
        for (var i = 0; i < split_cardnum.length; i++) {
            cardnumber = cardnumber + split_cardnum[i];
        }
        gateway.transaction.sale({
            amount: `${req.body.amount}`,
            paymentMethodNonce: "fake-valid-nonce",
            options: {
              submitForSettlement: true,
              storeInVaultOnSuccess: true
            }
          }, function (err, result) {
            if (err) {
              // handle err
                res.redirect('/error');
            }
          
            if (result.success) {
              console.log('Transaction ID: ' + result.transaction.id);
              console.log('Customer ID: ' + result.transaction.customer.id);
                var customer_id = result.transaction.customer.id;
                let creditCardParams = {
                    customer_id,
                    number: `${cardnumber}`,
                    expirationDate: `${req.body.month}/${req.body.year}`,
                    cvv: `${req.body.cvc}`
                  };
                  
                  gateway.creditCard.create(creditCardParams, (err, response) => {
                      if(err) {
                          console.log(err.message);
                          res.redirect('/error');
                      } else {
                          console.log(response);
                            if(response.success === true)
                            {
                                if (req.body.membership == 1) {
                                    var ask = 0;
                                }
                                if (req.body.membership == 2 || req.body.membership == 3) {
                                    var ask = 1;
                                }
                                if (req.body.membership == 4) {
                                    var ask = 2;
                                }
                                var today = new Date();
                                var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate() + ' ' + today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds() + '.' + today.getMilliseconds();
                                User.findByIdAndUpdate(req.body.user_id, {
                                    $set: {
                                        membership: req.body.membership,
                                        left_membership: req.body.membership,
                                        ask: ask,
                                        created_at: date,
                                        card_number: req.body.cardnumber,
                                        expire_month: req.body.month,
                                        expire_year: req.body.year,
                                        cvc: req.body.cvc,
                                        started_at: date,
                                        state: 1
                                    }
                                }, (err, user) => {
                                    if (err) {
                                        console.log(err);
                                        res.redirect('/error');
                                    } else {
                                        

                                        // res.json({ msg: 'success' });
                                        var mailOptions = {
                                            from: `${master_email}`,
                                            to: user.email,
                                            subject: 'Support',
                                            text: 'Welcome to app.social-media-builder.com'
                                        };
                                        
                                        transporter.sendMail(mailOptions, function(error, info){
                                            if (error) {
                                                console.log(error);
                                                res.redirect('/error');
                                            } else {
                                                console.log('Email sent: ' + info.response);
                                                var token = jwt.sign({ id: user._id }, 'cmssecret', {
                                                    expiresIn: 86400 // expires in 24 hours
                                                });
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
                                                req.session.share_cnt = user.shared_cnt;
                                                req.session.ask = user.ask;
                                                req.session.language = user.language;
                                                res.redirect('/');
                                            }
                                        });
                                    }
                                });
                            } else {
                                var error_msg = response.message;
                                console.log(error_msg+'**********')
                                res.json({msg : 'failed', error_msg : error_msg});
                            }
                          
                      }
                  });
            } else {
              console.error(result.message);
              res.redirect('/error');
            }
        });
    }else {
        var today = new Date();
        var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate() + ' ' + today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds() + '.' + today.getMilliseconds();
        User.findByIdAndUpdate(req.body.user_id, {
            $set: {
                membership: req.body.membership,
                left_membership: req.body.membership,
                ask: 1,
                created_at: date,
                card_number: req.body.cardnumber,
                expire_month: req.body.month,
                expire_year: req.body.year,
                cvc: req.body.cvc,
                started_at: date,
                state: 1
            }
        }, (err, user) => {
            if (err) {
                console.log(err);
                res.redirect('/error');
            } else {
                
                // res.json({ msg: 'success' });
                console.log(user.email);
                var mailOptions = {
                    from: `${master_email}`,
                    to: user.email,
                    subject: 'User register',
                    text: 'Welcome to app.social-media-builder.com'
                };
                
                transporter.sendMail(mailOptions, function(error, info){
                    if (error) {
                        console.log(error);
                        res.redirect('/error');
                    } else {
                        console.log('Email sent: ' + info.response);
                        var token = jwt.sign({ id: user._id }, 'cmssecret', {
                            expiresIn: 86400 // expires in 24 hours
                        });
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
                        req.session.share_cnt = user.shared_cnt;
                        req.session.ask = user.ask;
                        req.session.language = user.language;
                        console.log(req.session.token);
                        res.redirect('/');
                    }
                });
            }
        });
    }
    
}

exports.signin = function (req, res, next) {
    var email = req.body.email;
    var password = req.body.password;

    if (email.length == 0) {
        res.render('pages/auth/login', { title: 'CMS | Login', errors: "Email is required.", session: req.session, recent_url : req.url  })
    } else {
        User.findOne({
            email: email
        }, (err, user) => {
            if (err) {
                console.log(err);
                res.redirect('/error');
            } else {
                if (user == null) {
                    res.render('pages/auth/login', { title: 'CMS | Login', errors: "Please enter your email exactly. ", session: req.session, recent_url : req.url  })
                } else {
                    if (password.length == 0) {
                        res.render('pages/auth/login', { title: 'CMS | Login', errors: "Password is required.", session: req.session, recent_url : req.url  })
                    } else {
                        var passwordIsValid = bcrypt.compareSync(password, user.password);
                        if (!passwordIsValid) {
                            res.render('pages/auth/login', { title: 'CMS | Login', errors: "Please enter your password exactly.", session: req.session, recent_url : req.url  })
                        } else {
                            if (user.state == 0) {
                                User.findByIdAndDelete(user._id, (err) => {
                                    if(err) {
                                        console.log(err);
                                        res.redirect('/error');
                                    } else {
                                        res.render('pages/auth/login', { title: 'CMS | Login', errors: "You didn't buy membership. Your account is not allowed and deleted.", session: req.session, recent_url : req.url })
                                    }
                                })
                                
                            } else {
                                var token = jwt.sign({ id: user._id }, 'cmssecret', {
                                    expiresIn: 86400 // expires in 24 hours
                                });
                                console.log(token + '************** Token****************')
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
                                req.session.share_cnt = user.shared_cnt;
                                req.session.ask = user.ask;
                                req.session.language = user.language;
                                var today = new Date();
                                var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate() + ' ' + today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds() + '.' + today.getMilliseconds();

                                var currnet_time = new Date(date).getTime();
                                var created_time = new Date(user.created_at).getTime();
                                var started_time = new Date(user.started_at).getTime();

                                /** Monthly pay */
                                if (req.session.membership > 1) {
                                    console.log(currnet_time - started_time + '******************started_at 1 ********************')
                                    if ((currnet_time - started_time) > 2592000000) {
                                        console.log(currnet_time - started_time + '******************started_at 2 ********************')
                                        if (req.session.membership == 2) {
                                            amount = 20;
                                        }
                                        if (req.session.membership == 3) {
                                            amount = 25;
                                        }
                                        if (req.session.membership == 4) {
                                            amount = 30;
                                        }
                                        var split_cardnum = req.session.card_number.split(' ');
                                        var cardnumber = '';
                                        for (var i = 0; i < split_cardnum.length; i++) {
                                            cardnumber = cardnumber + split_cardnum[i];
                                        }

                                        gateway.transaction.sale({
                                            amount: `${amount}`,
                                            paymentMethodNonce: "fake-valid-nonce",
                                            options: {
                                              submitForSettlement: true,
                                              storeInVaultOnSuccess: true
                                            }
                                          }, function (err, result) {
                                            if (err) {
                                              // handle err
                                                res.redirect('/error');
                                            }
                                          
                                            if (result.success) {
                                              console.log('Transaction ID: ' + result.transaction.id);
                                              console.log('Customer ID: ' + result.transaction.customer.id);
                                                var customer_id = result.transaction.customer.id;
                                                let creditCardParams = {
                                                    customer_id,
                                                    number: `${cardnumber}`,
                                                    expirationDate: `${req.session.expire_month}/${req.session.expire_year}`,
                                                    cvv: `${req.session.cvc}`
                                                  };
                                                  
                                                  gateway.creditCard.create(creditCardParams, (err, response) => {
                                                      if(err) {
                                                          console.log(err);
                                                          res.redirect('/error');
                                                      } else {
                                                        console.log(response);
                                                        res.json({ response : response });
                        
                                                        User.findByIdAndUpdate(req.session.userid, {
                                                            $set: {
                                                                started_at: new Date(new Date(user.started_at).getTime() + 2592000000)
                                                            }
                                                        }, (err) => {
                                                            if (err) {
                                                                console.log(err);
                                                                res.redirect('/error');
                                                            } else {
                                                                req.session.started_at = new Date(new Date(user.started_at).getTime() + 2592000000);
                                                                if (user.permission == 1) {
                                                                    res.redirect('/admin');
                                                                } else {
                                                                    res.redirect('/');
                                                                }
                                                            }
                                                        });
                                                      }
                                                  });
                                            } else {
                                              console.error(result.message);
                                              res.redirect('/error');
                                            }
                                          });
                                    } else {
                                        console.log(currnet_time - created_time + '****************1********************')
                                        if ((currnet_time - created_time) > 596793842) {
                                            console.log(currnet_time - created_time + '****************2********************');
                                            if (req.session.membership == 4) {
                                                var ask = 2;
                                            }
                                            if (req.session.membership == 2 || req.session.membership == 3) {
                                                var ask = 1;
                                            }
                                            User.findByIdAndUpdate(user._id, {
                                                $set: {
                                                    left_membership: user.membership,
                                                    created_at: new Date(new Date(user.created_at).getTime() + 596793842),
                                                    ask: ask
                                                }
                                            }, (err) => {
                                                if (err) {
                                                    console.log(err);
                                                    res.redirect('/error');
                                                } else {
                                                    req.session.left_membership = user.membership;
                                                    req.session.created_at = new Date(new Date(user.created_at).getTime() + 596793842);
                                                    // req.session.save();
                                                    if (user.permission == 1) {
                                                        res.redirect('/admin');
                                                    } else {
                                                        res.redirect('/');
                                                    }
                                                }
                                            });
                                        } else {
                                            if (user.permission == 1) {
                                                res.redirect('/admin');
                                            } else {
                                                res.redirect('/');
                                            }
                                        }
                                    }
                                } else {
                                    if (user.permission == 1) {
                                        res.redirect('/admin');
                                    } else {
                                        res.redirect('/');
                                    }
                                }
                            }

                            /** End */
                        }
                    }
                }
            }
        });
    }
}

exports.profile = function (req, res, next) {
    console.log(req.session);
    Post.find({}, (err, posts) => {
        if (err) {
            console.log(err);
            res.redirect('/error');
        } else {
            var post_cnt = posts.length;
            res.render('pages/user/profile', { title: 'CMS | Profile', session: req.session, post_cnt: post_cnt, shared_cnt: req.session.shared_cnt, recent_url : req.url });
        }
    })

}

var storage = multer.diskStorage({
    destination: function (req, file, cb) {

        // Uploads is the Upload_folder_name
        cb(null, "/CMS_with_node/public/uploads/users")
    },
    filename: function (req, file, cb) {
        cb(null, req.session.userid + ".png")
    }
})

// Define the maximum size for uploading
// picture i.e. 1 MB. it is optional
const maxSize = 10 * 1000 * 1000;

var upload = multer({
    storage: storage,
    limits: { fileSize: maxSize },
    fileFilter: function (req, file, cb) {

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

exports.profile_save = function (req, res) {
    console.log(req.body)
    upload(req, res, function (err) {

        if (err) {

            // ERROR occured (here it can be occured due
            // to uploading image of size greater than
            // 1MB or uploading different file type)
            res.redirect('/error');
        }
        else {
            req.session.photo = req.session.userid + '.png';
            req.session.introduction = req.body.introduction;
            // SUCCESS, image successfully uploaded
            User.findByIdAndUpdate(req.session.userid, {
                $set: {
                    introduction: req.body.introduction,
                    photo: req.session.userid + '.png'
                }
            }, (err) => {
                if (err) {
                    console.log(err);
                    res.redirect('/error');
                } else {
                    res.redirect('/auth/profile');
                }
            });

        }
    });

}


exports.photo_generate = function (req, res, next) {
    res.render('pages/user/photo_generate', { layout : false, title : 'CMS | Logo Generate', recent_url : req.url, session : req.session});
}



exports.logout = function (req, res, next) {
    req.session.destroy((err) => {
        console.log(err)
    });
    res.redirect('/');
}