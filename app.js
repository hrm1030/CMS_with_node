var fs = require('fs');
var http = require('http');
var https = require('https');

// var privateKey  = fs.readFileSync('sslcert/key.pem');
// var certificate = fs.readFileSync('sslcert/cert.pem');

var createError = require('http-errors');
var express = require('express');
var expressLayouts = require('express-ejs-layouts');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var session = require('express-session');
// var redirectToHTTPS = require('express-http-to-https').redirectToHTTPS
var port = 80;

// var credentials = {key: privateKey, cert: certificate};

/** MongoDB connect */
var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/cms', {useNewUrlParser: true, useUnifiedTopology: true});
/** End DB connect */

/** Import Router */
var indexRouter = require('./routes/index');
var authRouter = require('./routes/auth');
/** End Import Router */


var app = express();

// app.use(redirectToHTTPS([/localhost:(\d{4})/], [/\/insecure/], 301));

// view engine setup
app.use(expressLayouts);
app.set('layout', './layouts/main');
app.set('views', path.join(__dirname, 'views'));
app.use(express.static(__dirname, { dotfiles: 'allow' } ));
app.set('view engine', 'ejs');

// const privateKey = fs.readFileSync('/etc/letsencrypt/live/yourdomain.com/privkey.pem', 'utf8');
// const certificate = fs.readFileSync('/etc/letsencrypt/live/yourdomain.com/cert.pem', 'utf8');
// const ca = fs.readFileSync('/etc/letsencrypt/live/yourdomain.com/chain.pem', 'utf8');

// const credentials = {
// 	key: privateKey,
// 	cert: certificate,
// 	ca: ca
// };

app.use(session({secret: 'ssshhhhh',saveUninitialized: true,resave: true}));
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/auth', authRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error', {title : 'CMS | Have something wrong', session : req.session, recent_url : req.url});
});


// app.listen(port, function() {
//   console.log(`This app is running on localhost:${port}`);
// });
// module.exports = app;

// var httpsServer = https.createServer(credentials, app);

// httpsServer.listen(443, function() {
//   console.log(`This app is running on https://www.social-media-builder.com`);
// });

// module.exports = httpsServer;

// Starting both http & https servers
const httpServer = http.createServer(app);
// const httpsServer = https.createServer(credentials, app);

httpServer.listen(80, () => {
	console.log('HTTP Server running on port 80');
});

// httpsServer.listen(443, () => {
// 	console.log('HTTPS Server running on port 443');
// });
