var express = require('express');
var router = express.Router();
var user = require('../controllers/UserController');
var admin = require('../controllers/AdminController');
var post = require('../controllers/PostController');
var auth_middleware = require('../middlewares/auth');
var admin_middleware = require('../middlewares/admin');

/** User Router */
router.get('/', auth_middleware.index, function(req, res, next) {
  res.render('index', { title: 'Express', session : req.session });
});

router.post('/membership/update', user.membership_update);

router.get('/search', auth_middleware.index, user.search);
router.post('/search/get_category', user.get_category);
router.post('/search/all', user.search_all);

/** Admin Router */
router.get('/admin', auth_middleware.index, admin_middleware.index, admin.index);
router.post('/admin/user/change_state', admin.change_state);

router.post('/admin/category/save', admin.category_save);
router.post('/admin/category/delete', admin.category_delete);

router.post('/admin/industry/save', admin.industry_save);
router.post('/admin/industry/delete', admin.industry_delete);

router.get('/post/get', post.get);
router.post('/post/save', post.save);
router.post('/post/preview', post.preview);
router.get('/post/list', auth_middleware.index, post.list);
router.post('/post/selected_category', post.selected_category);
router.get('/post/view', auth_middleware.index, post.view);
router.post('/post/view_ajax', post.view_ajax);
router.post('/post/send_following', post.send_following);
router.get('/post/edit', auth_middleware.index, post.edit);

module.exports = router;
