var createError = require('http-errors');
var express = require('express');
var expressLayouts = require('express-ejs-layouts');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var session = require('express-session');
var port = 80;

/** Websocket Server */
var socket = require('./socket');
/** End Websocket */

/** MongoDB connect */
var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/cms', {useNewUrlParser: true, useUnifiedTopology: true});
/** End DB connect */

/** Import Router */
var indexRouter = require('./routes/index');
var authRouter = require('./routes/auth');
/** End Import Router */


var app = express();
// view engine setup
app.use(expressLayouts);
app.set('layout', './layouts/main');
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

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
  res.render('error');
});


app.listen(port, function() {
  console.log(`This app is running on localhost:${port}`);
});
module.exports = app;
