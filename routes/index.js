var express = require('express');
var router = express.Router();
var user = require('../controllers/UserController');
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express', session : req.session });
});

router.get('/search', user.search);

router.get('/admin', user.admin)

module.exports = router;
