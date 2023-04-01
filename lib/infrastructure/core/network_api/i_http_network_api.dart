import 'package:http/http.dart' as http;

abstract class IHttpNetworkApi {
  Future<http.Response> get(String path, {Map<String, String>? params});
  Future<http.Response> post(String path,
      {Map<String, String>? headers, Object? body});
}
