import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:mone_weather_app/domain/weather/i_weather_repository.dart';
import 'package:mone_weather_app/domain/weather/weather.dart';
import 'package:mone_weather_app/domain/weather/weather_failure.dart';
import 'package:mone_weather_app/infrastructure/weather/models/weather_model.dart';
import 'package:mone_weather_app/infrastructure/weather/datasources/i_weather_remote_datasource.dart';

@LazySingleton(as: IWeatherRepository)
class WeatherRepository implements IWeatherRepository {
  final IWeatherRemoteDatasource weatehrRemoteDataSource;

  WeatherRepository({
    required this.weatehrRemoteDataSource,
  });

  @override
  Future<Either<WeatherFailure, List<Weather>>>
      getWeatherForLocationByDaysRange(
          {required String location, required int daysRange}) async {
    try {
      final List<WeatherModel> weatherForecastFromRemoteDatasource =
          await weatehrRemoteDataSource.getWeatherForLocationByDaysRange(
        location: location,
        daysRange: daysRange,
      );
      return right(weatherForecastFromRemoteDatasource);
    } on PlatformException catch (_) {
      return left(const WeatherFailure.networkError());
    }
  }
}
