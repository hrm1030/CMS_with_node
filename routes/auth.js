var express = require('express');
var router = express.Router();
var auth = require('../controllers/AuthController');
var auth_middleware = require('../middlewares/auth');

router.get('/login', auth.login);
router.get('/register', auth.register);
router.post('/signup', auth.signup);
router.post('/signin',auth.signin);
router.get('/profile', auth_middleware.index, auth.profile);
router.get('/profile/photo_generate', auth_middleware.index, auth.photo_generate);

router.post("/profile/save", auth.profile_save);

router.get('/logout', auth.logout);
module.exports = router;