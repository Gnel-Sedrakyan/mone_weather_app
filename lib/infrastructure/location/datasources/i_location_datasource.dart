import 'package:mone_weather_app/domain/location/location.dart';
import 'package:mone_weather_app/domain/location/value_objects.dart';

abstract class ILocationRemoteDatasource {
  Future<Location> getLocationByName({required String name});

  Future<Location> getLocationByPosition({required Position position});
}
