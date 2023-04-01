import 'package:mone_weather_app/domain/core/value_objects.dart';
import 'package:mone_weather_app/domain/weather/utils.dart';
import 'package:mone_weather_app/domain/weather/value_objects.dart';
import 'package:mone_weather_app/domain/weather/weather.dart';

class WeatherModel extends Weather {
  WeatherModel({
    required UniqueId id,
    required Temperature temperatureInCelsius,
    required DateTime day,
    required WeatherCondition weatherCondition,
  }) : super(
          id: id,
          temperatureInCelsius: temperatureInCelsius,
          day: day,
          weatherCondition: weatherCondition,
        );

  Map<String, dynamic> toJson() {
    return {
      'id': id.getOrCrash(),
      'temperatureInCelsius': temperatureInCelsius,
      'day': day.millisecondsSinceEpoch,
      'weatherCondition': weatherCondition.toString(),
    };
  }

  factory WeatherModel.fromJson(Map<String, dynamic> map) {
    return WeatherModel(
      id: UniqueId.fromUniqueString(map['id']),
      temperatureInCelsius: (map['temperatureInCelsius']),
      day: DateTime.fromMillisecondsSinceEpoch(map['day']),
      weatherCondition: getWeatherConditionFromString(map['weatherCondition']),
    );
  }

  static listFromResponse(List response) {
    final data = response;
    return data
        .map(
          (weather) => WeatherModel(
            day: DateTime.now(),
            id: UniqueId(),
            temperatureInCelsius: weather['temperatureInCelsius'],
            weatherCondition: getWeatherConditionFromString(
              weather['weatherCondition'],
            ),
          ),
        )
        .toList();
  }
}
