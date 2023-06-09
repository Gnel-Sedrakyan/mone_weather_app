import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  http.Client get httpClient => http.Client();
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
