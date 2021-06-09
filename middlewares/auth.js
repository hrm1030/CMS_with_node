exports.index = function(req, res, next) {
    if(req.session.userid){
        next();
    } else {
        res.render('index', { title: 'CMS', session :req.session });
    }
}

exports.check_membership = function(req, res, next) {
    console.log(req.session.left_membership)
    if(req.session.left_membership > 0) {
        next();
    } else {
        res.redirect('/search');
    }
}