import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:mone_weather_app/presentation/pages/weather/weather_page.dart';

class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => ['/*'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        BeamPage(
          key: const ValueKey('home'),
          title: 'home',
          child: WeatherPage(),
        ),
      ];
}
