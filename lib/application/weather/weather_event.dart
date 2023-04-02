part of 'weather_bloc.dart';

@freezed
abstract class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.dateRangeChanged(
      {required int dateRange,
      required LocationWeather locationWeather}) = DateRangeChanged;
  const factory WeatherEvent.deleteLocationWeather(
      {required LocationWeather locationWeather}) = DeleteLocationWeather;
  const factory WeatherEvent.addLocationByName({required String locationName}) =
      AddLocationByName;
  const factory WeatherEvent.addLocationByCurrentPosition() =
      AddLocationByCurrentPosition;
}
