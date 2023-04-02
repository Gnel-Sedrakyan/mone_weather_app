part of 'weather_bloc.dart';

@freezed
@injectable
abstract class WeatherState with _$WeatherState {
  const WeatherState._();
  const factory WeatherState({
    required List<LocationWeather> locationWeatherList,
    required bool isLoadingNewWeather,
  }) = _WeatherState;

  @override
  @factoryMethod
  factory WeatherState.initial() => const WeatherState(
        locationWeatherList: [],
        isLoadingNewWeather: true,
      );
}
