import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_failure.freezed.dart';

@freezed
abstract class LocationFailure with _$LocationFailure {
  const factory LocationFailure.networkError() = networkError;
  const factory LocationFailure.locationDoesNotExist() = LocationDoesNotExist;
  const factory LocationFailure.gpsIsNotAvalible() = GpsIsNotAvalible;
}
