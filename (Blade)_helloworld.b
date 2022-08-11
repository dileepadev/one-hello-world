import http
import json

var server = http.server(3000)
server.on_receive(|request, response| {
  echo 'Request from ${request.ip} to ${request.path}.'
  
  response.headers['Content-Type'] = 'application/json'
  response.write(json.encode(request))
})

echo 'Hello World!'
server.listen()
