import 'package:mone_weather_app/domain/core/value_objects.dart';
import 'package:mone_weather_app/domain/location/location.dart';
import 'package:mone_weather_app/domain/location/value_objects.dart';
import 'package:mone_weather_app/infrastructure/location/datasources/i_location_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(
    as: ILocationRemoteDatasource, env: [Environment.dev, Environment.test])
class LocationFakeDatasource implements ILocationRemoteDatasource {
  LocationFakeDatasource();

  @override
  Future<Location> getLocationByName({required String name}) async {
    await Future.delayed(const Duration(seconds: 1));
    return Location(id: UniqueId(), name: name);
  }

  @override
  Future<Location> getLocationByPosition({required Position position}) async {
    await Future.delayed(const Duration(seconds: 1));
    return Location(id: UniqueId(), name: 'Armenia, Erevan');
  }
}
