import 'package:dartz/dartz.dart';
import 'package:mone_weather_app/domain/location/location.dart';
import 'package:mone_weather_app/domain/location/location_failure.dart';

abstract class ILocationRepository {
  Future<Either<LocationFailure, Location>> getLocationByName({
    required String name,
  });
  Future<Either<LocationFailure, Location>> getCurrentLocation();
}
