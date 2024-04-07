import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

void main(List<String> args) async {
  var router = Router();
  router.get('/hello', (Request request) {
    return Response.ok("hello ${DateTime.now()}");
  });
  print("项目启动： 8080");
  final server = await serve(router.call, '127.0.0.1', 8080);
}
