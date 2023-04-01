import 'package:injectable/injectable.dart';

import 'package:http/http.dart' as http;
import 'package:mone_weather_app/infrastructure/core/network_api/i_http_network_api.dart';

class ApiConfig {
  static const String baseUrl = 'https://smarty.arpinet.am/tvmiddleware/api';
  static const String apiKey =
      '5HGLKmJ5YCboCY5YorkAMkQxoQJsLCzUuvHvWTfxjfDM5engDUdXcZcKTGaf6XGX';
  static const params = {
    'client_id': '1',
    'api_key': apiKey,
    'device': 'appleTV',
  };
}

@LazySingleton(as: IHttpNetworkApi)
class HttpNetworkApi implements IHttpNetworkApi {
  final baseUrl = "https://smarty.arpinet.am/tvmiddleware/api/noauth";

  final http.Client _clinet = http.Client();

  @override
  Future<http.Response> get(String path, {Map<String, String>? params}) {
    final url = Uri.parse("$baseUrl$path")
        .replace(queryParameters: {...ApiConfig.params, ...?params});

    return _clinet.get(url);
  }

  @override
  Future<http.Response> post(String path,
      {Map<String, String>? headers, Object? body}) {
    final baseHeaders = {
      'Content-Type': 'application/json',
    };
    final url = Uri.parse("$baseUrl$path");

    return _clinet.post(url,
        headers: {...baseHeaders, ...?headers}, body: body);
  }
}
