import 'package:mone_weather_app/domain/weather/weather.dart';

WeatherCondition getWeatherConditionFromString(str) {
  // Convert to enum
  WeatherCondition weatherCondition = WeatherCondition.values.firstWhere(
    (e) => e.toString() == 'WeatherCondition.$str',
    orElse: () => WeatherCondition.sunny,
  );
  return weatherCondition;
}
