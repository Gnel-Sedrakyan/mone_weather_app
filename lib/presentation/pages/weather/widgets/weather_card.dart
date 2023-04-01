import 'package:flutter/material.dart';
import 'package:mone_weather_app/presentation/core/asset_manager.dart';
import 'package:mone_weather_app/presentation/core/constants/colors.dart';
import 'package:mone_weather_app/presentation/core/constants/defalut_values.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultSpacing),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      width: 30,
      height: 50,
      decoration: const BoxDecoration(
          color: sunnyWeatherColor,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Column(children: [
        Text(
          "${index + 1}0 May",
          style: const TextStyle(fontSize: 4),
        ),
        const Spacer(),
        const Image(
          image: AssetImage(Assets.windySun),
          height: 15,
        ),
        const Spacer(),
        Text(
          "${index + 10}°C",
          style: const TextStyle(fontSize: 4, fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }
}
