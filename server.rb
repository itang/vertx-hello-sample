require "vertx"

Vertx::HttpServer.new.request_handler do |req|
  req.response.end("Hello World! (ruby)")
end.listen 8080
