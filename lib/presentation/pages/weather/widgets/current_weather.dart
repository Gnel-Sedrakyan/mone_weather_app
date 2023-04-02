import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mone_weather_app/domain/weather/location_weather.dart';
import 'package:mone_weather_app/presentation/core/constants/defalut_values.dart';
import 'package:mone_weather_app/presentation/core/constants/styles.dart';
import 'package:mone_weather_app/presentation/core/widgets/gradient_text.dart';
import 'package:mone_weather_app/presentation/core/widgets/svg_asset_image.dart';
import 'package:mone_weather_app/presentation/pages/weather/utils/weather_helpers.dart';

class CurrentWeatherInfo extends StatelessWidget {
  const CurrentWeatherInfo({
    super.key,
    required this.locationWeather,
  });
  final LocationWeather locationWeather;
  @override
  Widget build(BuildContext context) {
    if (locationWeather.hasError) {
      return Container(
          width: double.infinity,
          padding: const EdgeInsets.only(
            bottom: defaultPadding,
          ),
          decoration: BoxDecoration(
              color: locationWeather.weatherForecastOrFailure.fold(
                (l) => Theme.of(context).colorScheme.errorContainer,
                (weathers) => getColorFoeWeatherCondition(
                  weathers.first.weatherCondition,
                ),
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(defaultBorderRadius),
                bottomRight: Radius.circular(defaultBorderRadius),
              )),
          child: const Center(
            child: Text("errot"),
          )); //TODO get error from location fotecast
    }
    return _validWeatherBuilder(context);
  }

  Container _validWeatherBuilder(BuildContext context) {
    String formattedDate = DateFormat('dd/MM/yyyy')
        .format(locationWeather.getCurrentWeather().day);
    String formattedWeekDay =
        DateFormat('EEEE').format(locationWeather.getCurrentWeather().day);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        bottom: defaultPadding,
      ),
      decoration: BoxDecoration(
          color: getColorFoeWeatherCondition(
              locationWeather.getCurrentWeather().weatherCondition),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(defaultBorderRadius),
            bottomRight: Radius.circular(defaultBorderRadius),
          )),
      child: Column(children: [
        const Spacer(),
        GradientText(
          '${locationWeather.getCurrentWeather().temperature.temperatureInCelsius}°C', //TODO onclick show temperature in fharenheit
          style: const TextStyle(
            fontSize: 50,
            letterSpacing: 4,
            fontWeight: FontWeight.w500,
          ),
          gradient: primaryGradient,
        ),
        const SizedBox(
          height: defaultSpacing,
        ),
        SvgAssetImage(
          image: weatherConditionToAssetsIcon(
              locationWeather.getCurrentWeather().weatherCondition),
          height: 50,
          width: 50,
        ),
        const SizedBox(
          height: defaultSpacing * 1.5,
        ),
        Text(
          weatherConditionToDisplayString(
              locationWeather.getCurrentWeather().weatherCondition),
          style: const TextStyle(fontSize: 12, letterSpacing: 4),
        ),
        const Spacer(),
        Text(
          formattedWeekDay,
          style: const TextStyle(fontSize: 9, letterSpacing: 1.6),
        ),
        Text(
          formattedDate,
          style: const TextStyle(fontSize: 9, letterSpacing: 1.6),
        ),
        const SizedBox(
          height: defaultSpacing,
        ),
      ]),
    );
  }
}
