var Category = require('../models/Category');
exports.save = function(req, res, next) {
    Category.create({
        name : req.body.name,
    }, (err, category) => {
        if(err){
            res.status(500).send(err);
        } else {
            res.status(200).send({ category : category });
        }
    });
}