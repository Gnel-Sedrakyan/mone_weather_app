import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mone_weather_app/domain/weather/weather.dart';
import 'package:mone_weather_app/presentation/core/constants/defalut_values.dart';
import 'package:mone_weather_app/presentation/pages/weather/utils/weather_helpers.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key, required this.weather});

  final Weather? weather;

  @override
  Widget build(BuildContext context) {
    if (weather == null) {
      return Container(
        margin: const EdgeInsets.only(left: defaultSpacing),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        width: 30,
        height: 50,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.errorContainer,
            borderRadius: const BorderRadius.all(Radius.circular(8))),
      );
    }
    String formattedDate = DateFormat('dd M').format(weather!.day);
    return Container(
      margin: const EdgeInsets.only(left: defaultSpacing),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      width: 30,
      height: 50,
      decoration: BoxDecoration(
          color: getColorFoeWeatherCondition(weather!.weatherCondition),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Column(children: [
        Text(
          formattedDate,
          style: const TextStyle(fontSize: 4),
        ),
        const Spacer(),
        Image(
          image: AssetImage(
              weatherConditionToAssetsForCards(weather!.weatherCondition)),
          height: 15,
        ),
        const Spacer(),
        Text(
          "${weather!.temperature.temperatureInCelsius}°C",
          style: const TextStyle(fontSize: 4, fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }
}
