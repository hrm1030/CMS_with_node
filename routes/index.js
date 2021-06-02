var express = require('express');
var router = express.Router();
var user = require('../controllers/UserController');
var admin = require('../controllers/AdminController');
var post = require('../controllers/PostController');

/** User Router */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express', session : req.session });
});

router.post('/membership/update', user.membership_update);

router.get('/search', user.search);
router.post('/search/get_category', user.get_category);
router.post('/search/all', user.search_all);

/** Admin Router */
router.get('/admin', admin.index);
router.post('/admin/user/change_state', admin.change_state);

router.post('/admin/category/save', admin.category_save);
router.post('/admin/category/delete', admin.category_delete);

router.post('/admin/industry/save', admin.industry_save);
router.post('/admin/industry/delete', admin.industry_delete);
router.get('/post/get', post.get);
router.post('/post/save', post.save);
router.post('/post/preview', post.preview);

module.exports = router;
