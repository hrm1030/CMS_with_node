exports.index = function(req, res, next) {
    if(req.session.userid){
        next();
    } else {
        res.render('index', { title: 'Express', session :req.session });
    }
}