import 'dart:ui';

import 'package:mone_weather_app/domain/weather/weather.dart';
import 'package:mone_weather_app/presentation/core/asset_manager.dart';
import 'package:mone_weather_app/presentation/core/constants/colors.dart';

bool isPageChanged(double pageOffset, currentPage) {
  return (pageOffset % 1 == 0 || (pageOffset - currentPage).abs() > 1);
}

Color getColorFoeWeatherCondition(WeatherCondition weatherCondition) {
  if (weatherCondition == WeatherCondition.sunny) {
    return sunnyWeatherColor;
  }
  if (weatherCondition == WeatherCondition.snowy) {
    return snowyWeatherColor;
  }
  if (weatherCondition == WeatherCondition.clear) {
    return clearWeatherColor;
  }
  return cloudyWeatherColor;
}

String weatherConditionToDisplayString(WeatherCondition weatherCondition) {
  if (weatherCondition == WeatherCondition.sunny) {
    return "Sunny";
  }
  if (weatherCondition == WeatherCondition.snowy) {
    return "Snowy";
  }
  if (weatherCondition == WeatherCondition.clear) {
    return "Clear";
  }
  if (weatherCondition == WeatherCondition.rainy) {
    return "Rainy";
  }
  if (weatherCondition == WeatherCondition.thunderstorm) {
    return "ThunderStorm";
  }
  return "Cloudy";
}

String weatherConditionToAssetsIcon(WeatherCondition weatherCondition) {
  if (weatherCondition == WeatherCondition.sunny) {
    return Assets.sun;
  }
  if (weatherCondition == WeatherCondition.snowy) {
    return Assets.snow;
  }
  if (weatherCondition == WeatherCondition.clear) {
    return Assets.moon;
  }
  return Assets.cloud;
}

String weatherConditionToAssetsForCards(WeatherCondition weatherCondition) {
  if (weatherCondition == WeatherCondition.sunny) {
    return Assets.claritySun;
  }
  if (weatherCondition == WeatherCondition.clear) {
    return Assets.clarityMoon;
  }
  if (weatherCondition == WeatherCondition.rainy) {
    return Assets.rainy;
  }
  if (weatherCondition == WeatherCondition.thunderstorm) {
    return Assets.cloudySun;
  }
  return Assets.stormy;
}
