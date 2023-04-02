import 'package:mone_weather_app/domain/location/location.dart';
import 'package:mone_weather_app/infrastructure/weather/models/weather_model.dart';

abstract class IWeatherRemoteDatasource {
  Future<List<WeatherModel>> getWeatherForLocationByDaysRange(
      {required Location location, required int daysRange});
}
