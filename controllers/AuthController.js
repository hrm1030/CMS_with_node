var Industry = require('../models/Industry');
var User = require('../models/User');
var bcrypt = require('bcryptjs');
var jwt = require('jsonwebtoken');

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
            errors.push('Password must be at least 6 characters.');
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
                        var hashedPassword = bcrypt.hashSync(req.body.password, 8);
                        var today = new Date();

                        var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
                        User.create({
                            name : name,
                            surname : surname,
                            phone : phone,
                            email : email,
                            password : hashedPassword,
                            membership : 0,
                            created_at : date,
                            permission : 2,
                            state : 0
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
                console.log(user);
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
                            var session = req.session;
                            session.id = user._id;
                            session.name = user.name;
                            session.surname = user.surname;
                            session.phone = user.phone;
                            session.email = user.email;
                            session.permission = user.permission;
                            session.membership = user.membership;
                            session.created_at = user.created_at;
                            session.state = user.state;
                            req.session.save();
                            if(user.permission == 1) {
                                res.redirect('/admin');
                            }else {
                                res.redirect('/search');
                            }
                            
                        }
                    }
                    
                }
            }
        })
    }
}

exports.profile = function(req, res, next) {
    console.log(req.originalUrl);
    urls = req.originalUrl.split('/');
    console.log(urls)
    res.render('pages/user/profile', {title : 'CMS | Profile', session : req.session});
}

exports.logout = function(req, res, next) {
    req.session.destroy((err) => {
        console.log(err)
    });
    res.redirect('/');
}