var express = require('express');
var router = express.Router();
var user = require('../controllers/UserController');
var admin = require('../controllers/AdminController');
var post = require('../controllers/PostController');
var auth_middleware = require('../middlewares/auth');
var admin_middleware = require('../middlewares/admin');
var share = require('../controllers/ShareController');

/** User Router */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'CMS | Home', session : req.session, recent_url : req.url });
});

router.get('/info', user.info);
router.get('/training', user.training);
router.post('/get_training', user.get_training);
router.get('/support', auth_middleware.index, user.support);
router.post('/support_save', user.support_save);
router.post('/membership/update', user.membership_update);
router.get('/faq', auth_middleware.index, user.faq);
router.post('/get_faqs', user.get_faqs);
router.get('/recommend_category', auth_middleware.index, user.recommend_category);
router.post('/recommend_category_save', user.recommend_category_save);
router.get('/search', auth_middleware.index, user.search);
router.post('/search/get_category', user.get_category);
router.post('/search/all', user.search_all);
router.get('/ask_for_post', auth_middleware.index, user.ask_for_post);
router.post('/ask_for_post_save', user.ask_for_post_save);

/** Admin Router */
router.get('/admin', auth_middleware.index, admin_middleware.index, admin.index);
router.post('/admin/user/change_state', admin.change_state);
router.post('/admin/user/change_permission', admin.change_permission);
router.post('/admin/user/delete', admin.user_delete);
router.post('/admin/user/close', admin.user_close);
router.post('/admin/user/unclose', admin.user_unclose);

router.post('/admin/category/save', admin.category_save);
router.post('/admin/category/delete', admin.category_delete);

router.post('/admin/industry/save', admin.industry_save);
router.post('/admin/industry/delete', admin.industry_delete);
router.post('/admin/post/delete', admin.post_delete);

router.get('/admin/videos', auth_middleware.index, admin_middleware.index, admin.videos);
router.post('/admin/trainingupload', admin.trainingupload);
router.post('/admin/infoupload', admin.infoupload);
router.post('/admin/training_save', admin.training_save);
router.post('/admin/video_delete', admin.video_delete);

router.get('/admin/faq', auth_middleware.index, admin_middleware.index, admin.faq);
router.post('/admin/faq/change_language', admin.change_language);
router.post('/admin/faq/save', admin.faq_save);
router.post('/admin/faq/update', admin.faq_update);
router.post('/admin/faq/delete', admin.faq_delete);

router.get('/post/get', post.get);
router.post('/post/save', post.save);
router.post('/post/preview', post.preview);
router.get('/post/list', auth_middleware.index, post.list);
router.post('/post/selected_category', post.selected_category);
router.get('/post/view', auth_middleware.index, post.view);
router.post('/post/view_ajax', post.view_ajax);
router.post('/post/filesupload', post.filesupload);

router.post('/share/logo_upload', share.logo_upload);
router.get('/share/image_jimp', share.image_jimp);
router.get('/share/image_jimp_position_change', share.image_jimp_position_change);
router.get('/share', share.share);
module.exports = router;
