import 'package:mone_weather_app/domain/weather/weather.dart';
import 'package:mone_weather_app/infrastructure/weather/models/weather_model.dart';

abstract class IWeatherRemoteDatasource {
  Future<List<WeatherModel>> getWeatherForLocationByDaysRange(
      {required String location, required int daysRange});
}
