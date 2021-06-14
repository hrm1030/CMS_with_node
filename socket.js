var http = require('http');
var WebSocketServer = require('websocket').server;
var User = require('./models/User');
const websocketserver = http.createServer();
websocketserver.listen(9000, (err) => {
  if(err){
    console.log(err);
  } else {
    console.log('Websocket Server created. port : 9000...');
  }
});

const wsServer = new WebSocketServer({
  httpServer: websocketserver
});
wsServer.on('request', function(request) {
  const connection = request.accept(null, request.origin);

  connection.on('message', function(message) {
    if(message.utf8Data == 'Getting users amount.') {
        User.find({}, (err, users) => {
            if(err) {
                console.log(err);
            } else {
                connection.sendUTF(users.length);
            }
        });
    } else {
        User.find({}, (err, users) => {
            if(err) {
                console.log(err);
            } else {
                connection.sendUTF(users.length);
            }
        });
    }
  });

  connection.on('close', function(reasonCode, description) {
    console.log('Websocket Server is closed.');
  });

})
