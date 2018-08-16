var app = function(request) {
   return {
      body: ['Hello World'],
      headers: {'Content-Type': 'text/html'},
      status: 200
   }
}

var {Server} = require('ringo/httpserver');
var server = new Server({app: app, port: 8080,host:"0.0.0.0"});
server.start();