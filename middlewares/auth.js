exports.index = function(req, res, next) {
    if(req.session.userid){
        next();
    } else {
        res.render('index', { title: 'CMS', session :req.session });
    }
}