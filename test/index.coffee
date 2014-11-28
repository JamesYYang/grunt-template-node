http = require("http")

server = http.createServer (req, res)->
  res.writeHead(200, {'Content-Type': 'text/plain'})
  res.end('Hello Grunt!')

server.listen "{port}"

console.log "Service start..."

