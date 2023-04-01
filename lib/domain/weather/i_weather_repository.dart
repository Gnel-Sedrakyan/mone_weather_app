import 'package:dartz/dartz.dart';
import 'package:mone_weather_app/domain/weather/weather.dart';

import 'weather_failure.dart';

abstract class IWeatherRepository {
  Future<Either<WeatherFailure, List<Weather>>>
      getWeatherForLocationByDaysRange({
    required String location,
    required int daysRange,
  });
}
