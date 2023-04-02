import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:mone_weather_app/domain/location/errors.dart';
import 'package:mone_weather_app/domain/location/i_location_repository.dart';
import 'package:mone_weather_app/domain/location/location.dart';
import 'package:mone_weather_app/domain/location/location_failure.dart';
import 'package:mone_weather_app/domain/location/value_objects.dart';
import 'package:mone_weather_app/infrastructure/location/datasources/i_location_datasource.dart';
import 'package:mone_weather_app/infrastructure/location/datasources/i_position_datasource.dart';

@LazySingleton(as: ILocationRepository)
class LocationRepository implements ILocationRepository {
  final ILocationRemoteDatasource locationRemoteDataSource;
  final IPositionDatasource positionDatasource;

  LocationRepository({
    required this.positionDatasource,
    required this.locationRemoteDataSource,
  });

  @override
  Future<Either<LocationFailure, Location>> getLocationByName(
      {required String name}) async {
    try {
      final Location locationFromRemoteDatasource =
          await locationRemoteDataSource.getLocationByName(
        name: name,
      );
      return right(locationFromRemoteDatasource);
    } on PlatformException catch (_) {
      return left(const LocationFailure.networkError());
    }
  }

  Future<Either<LocationFailure, Location>> getCurrentLocationByGps() async {
    try {
      final Position currentPosition =
          await positionDatasource.getCurrentPositionByGps();
      final Location locationFromRemoteDatasource =
          await locationRemoteDataSource.getLocationByPosition(
        position: currentPosition,
      );
      return right(locationFromRemoteDatasource);
    } on PlatformException catch (_) {
      return left(const LocationFailure.networkError());
    } on GpsNotEnabledError {
      return left(const LocationFailure.gpsIsNotAvalible());
    }
  }

  Future<Either<LocationFailure, Location>> getCurrentLocationByIp() async {
    try {
      final Position currentPosition =
          await positionDatasource.getCurrentPositionByIp();
      final Location locationFromRemoteDatasource =
          await locationRemoteDataSource.getLocationByPosition(
        position: currentPosition,
      );
      return right(locationFromRemoteDatasource);
    } on PlatformException catch (_) {
      return left(const LocationFailure.networkError());
    }
  }

  @override
  Future<Either<LocationFailure, Location>> getCurrentLocation() async {
    final Either<LocationFailure, Location> locationByGps =
        await getCurrentLocationByGps();
    if (locationByGps.isRight()) {
      return locationByGps;
    }

    final Either<LocationFailure, Location> locationByIp =
        await getCurrentLocationByIp();
    return locationByIp;
  }
}
