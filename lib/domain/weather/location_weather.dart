import 'package:dartz/dartz.dart';
import 'package:mone_weather_app/domain/location/location.dart';
import 'package:mone_weather_app/domain/location/location_failure.dart';
import 'package:mone_weather_app/domain/weather/weather.dart';
import 'package:mone_weather_app/domain/weather/weather_failure.dart';

class LocationWeather {
  final Either<LocationFailure, Location> locationOrFailure;
  Either<WeatherFailure, List<Weather>> weatherForecastOrFailure;
  bool isLoadingForecast;
  int forecastDaysRange;

  LocationWeather({
    required this.locationOrFailure,
    this.weatherForecastOrFailure = const Right([]),
    this.isLoadingForecast = true,
    this.forecastDaysRange = 7,
  });

  LocationWeather copyWith({
    Either<WeatherFailure, List<Weather>>? weatherForecastOrFailure,
    bool? isLoadingForecast,
    int? forecastDaysRange,
  }) {
    return LocationWeather(
      locationOrFailure: locationOrFailure,
      weatherForecastOrFailure:
          weatherForecastOrFailure ?? this.weatherForecastOrFailure,
      isLoadingForecast: isLoadingForecast ?? this.isLoadingForecast,
      forecastDaysRange: forecastDaysRange ?? this.forecastDaysRange,
    );
  }

  get isLoading => weatherForecastOrFailure.fold(
        (_) => false,
        (weatherForecast) => weatherForecast.isEmpty,
      );
  get hasError =>
      weatherForecastOrFailure.isLeft() || locationOrFailure.isLeft();

  Weather getCurrentWeather() {
    return weatherForecastOrFailure
        .getOrElse(() => throw "weather forecast should beLoaded and valid")
        .first;
  }
}
