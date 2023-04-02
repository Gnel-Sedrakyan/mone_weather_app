import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mone_weather_app/presentation/core/app_widget.dart';
import 'package:mone_weather_app/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.test); // test|prod
  runApp(const AppWidget());
}
