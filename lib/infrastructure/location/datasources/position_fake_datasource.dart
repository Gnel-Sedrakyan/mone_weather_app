import 'package:injectable/injectable.dart';
import 'package:mone_weather_app/domain/location/errors.dart';
import 'package:mone_weather_app/domain/location/value_objects.dart';
import 'package:mone_weather_app/infrastructure/location/datasources/i_position_datasource.dart';

@LazySingleton(
    as: IPositionDatasource, env: [Environment.dev, Environment.test])
class PositionDatasource implements IPositionDatasource {
  PositionDatasource();

  @override
  Future<Position> getCurrentPositionByGps() async {
    await Future.delayed(const Duration(milliseconds: 100));
    throw GpsNotEnabledError;

    // bool servicestatus = await Geolocator.isLocationServiceEnabled();

    // if (servicestatus) {
    //   Position position = await Geolocator.getCurrentPosition(
    //       desiredAccuracy: LocationAccuracy.high);
    //   return position;
    // } else {
    //   throw GpsNotEnabledError;
    // }

    // currently developing app for macos (because I am not on macos13 or higher...),
    // so this is not going to work,
    // that's why i did it this way
  }

  @override
  Future<Position> getCurrentPositionByIp() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return Position(longitude: 'fake longitude', latitude: 'fake latitude');
  }
}
