import 'package:flutter/material.dart';

import 'package:mone_weather_app/presentation/core/constants/defalut_values.dart';
import 'package:mone_weather_app/presentation/pages/weather/widgets/day_range_select.dart';
import 'package:mone_weather_app/presentation/pages/weather/widgets/weather_forecast_carousel.dart';
import 'package:mone_weather_app/presentation/pages/weather/widgets/weather_pages_builder.dart';

class MainScreen extends StatefulWidget {
  static const location = "/weather/";

  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 5,
          child: WeatherInfoCarousell(),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const SizedBox(
                height: defaultSpacing * 1.5,
              ),
              const DayRangeSelect(),
              WeatherForecastSlider(scrollController: _scrollController),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ],
    );
  }
}
