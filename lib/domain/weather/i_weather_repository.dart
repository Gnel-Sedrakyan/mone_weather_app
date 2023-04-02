import 'package:dartz/dartz.dart';
import 'package:mone_weather_app/domain/location/location.dart';
import 'package:mone_weather_app/domain/weather/weather.dart';

import 'weather_failure.dart';

abstract class IWeatherRepository {
  Future<Either<WeatherFailure, List<Weather>>>
      getWeatherForLocationByDaysRange({
    required Location location,
    required int daysRange,
  });
}
