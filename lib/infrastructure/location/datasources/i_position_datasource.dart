import 'package:mone_weather_app/domain/location/value_objects.dart';

abstract class IPositionDatasource {
  Future<Position> getCurrentPositionByGps();
  Future<Position> getCurrentPositionByIp();
}
