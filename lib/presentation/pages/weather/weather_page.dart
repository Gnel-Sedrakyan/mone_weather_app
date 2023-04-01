import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:mone_weather_app/presentation/pages/weather/main_screen.dart';

final homeBeamerKey = GlobalKey<BeamerState>();

class WeatherPage extends StatelessWidget {
  final _homeScaffoldKey = GlobalKey<ScaffoldState>();
  WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(key: _homeScaffoldKey, body: const MainScreen()),
    );
  }
}
