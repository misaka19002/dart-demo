import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

void main(List<String> args) async {
  var router = Router();
  router.get('/hello', (Request request) {
    return Response.ok("hello ${DateTime.now()}");
  });
  var port = Platform.environment['PORT'];
  print("项目启动： $port");
  final server = await serve(
      router.call, '127.0.0.1', int.tryParse(port ?? '8080') ?? 8080);
}
