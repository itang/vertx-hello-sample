var vertx = require('vertx');

vertx.createHttpServer().requestHandler(function(req){
  req.response.end("Hello World! (js)");
}).listen(8080, 'localhost');
