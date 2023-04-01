import 'package:mone_weather_app/domain/core/value_objects.dart';
import 'package:mone_weather_app/domain/weather/value_objects.dart';
import 'package:mone_weather_app/domain/weather/weather.dart';
import 'package:mone_weather_app/infrastructure/weather/datasources/i_weather_remote_datasource.dart';
import 'package:injectable/injectable.dart';
import 'package:mone_weather_app/infrastructure/weather/models/weather_model.dart';

@LazySingleton(
    as: IWeatherRemoteDatasource, env: [Environment.dev, Environment.test])
class WeatherFakeDatasource implements IWeatherRemoteDatasource {
  WeatherFakeDatasource();

  @override
  Future<List<WeatherModel>> getWeatherForLocationByDaysRange(
      {required String location, required int daysRange}) async {
    await Future.delayed(const Duration(seconds: 3));
    List<WeatherModel> weathers = [];
    for (var i = 0; i < daysRange; i++) {
      weathers.add(
        WeatherModel(
          id: UniqueId(),
          temperatureInCelsius: Temperature(18),
          day: DateTime.now().add(Duration(days: i)),
          weatherCondition: WeatherCondition.clear,
        ),
      );
    }
    return weathers;
  }
}
