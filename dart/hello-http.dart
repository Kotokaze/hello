import 'dart:io';

void main(List<String> args) {
  HttpServer.bind(InternetAddress.loopbackIPv4, 8080).then((server) {
    print("Server is listening on http://${server.address.host}:${server.port}");

    server.listen((HttpRequest req) {
      req.response.write('Hello, world!');
      req.response.close();
    });
  });
}
