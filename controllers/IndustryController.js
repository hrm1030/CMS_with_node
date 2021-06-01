var Industry = require('../models/Industry');
exports.save = function(req, res, next) {
    Industry.create({
        name : req.body.name,
    }, (err, industry) => {
        if(err){
            res.status(500).send(err);
        } else {
            res.status(200).send({ industry : industry });
        }
    })
}