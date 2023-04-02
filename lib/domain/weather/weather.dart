import 'package:mone_weather_app/domain/core/entity.dart';
import 'package:mone_weather_app/domain/core/value_objects.dart';
import 'package:mone_weather_app/domain/weather/value_objects.dart';

enum WeatherCondition {
  sunny,
  clear,
  cloudy,
  snowy,
  rainy,
  thunderstorm,
}

class Weather implements IEntity {
  @override
  final UniqueId id;
  final Temperature temperature;
  final DateTime day;
  final WeatherCondition weatherCondition;

  Weather({
    required this.id,
    required this.temperature,
    required this.day,
    required this.weatherCondition,
  });

  Weather copyWith({
    UniqueId? id,
    Temperature? temperature,
    DateTime? day,
    WeatherCondition? weatherCondition,
  }) {
    return Weather(
      id: id ?? this.id,
      temperature: temperature ?? this.temperature,
      day: day ?? this.day,
      weatherCondition: weatherCondition ?? this.weatherCondition,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Weather && other.id == id;
  }

  @override
  int get hashCode =>
      id.hashCode ^
      temperature.hashCode ^
      day.hashCode ^
      weatherCondition.hashCode;

  @override
  String toString() => 'Weather:$temperature, $weatherCondition';
}
