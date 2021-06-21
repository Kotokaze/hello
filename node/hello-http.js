var http = require('http');

const PORT = 8080;
var server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.write("Hello World!!\n");
  res.end;
}).listen(PORT);

console.log("Server is running on http://localhost:%d", PORT);
