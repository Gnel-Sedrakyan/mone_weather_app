import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_failure.freezed.dart';

@freezed
abstract class WeatherFailure with _$WeatherFailure {
  const factory WeatherFailure.networkError() = networkError;
  const factory WeatherFailure.weatherForThisLocationIsNotAvalible() =
      WeatherForThisLocationIsNotAvalible;
}
