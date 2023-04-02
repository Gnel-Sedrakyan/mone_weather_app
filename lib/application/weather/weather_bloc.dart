import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mone_weather_app/domain/location/i_location_repository.dart';
import 'package:mone_weather_app/domain/location/location.dart';
import 'package:mone_weather_app/domain/location/location_failure.dart';
import 'package:mone_weather_app/domain/weather/i_weather_repository.dart';
import 'package:mone_weather_app/domain/weather/location_weather.dart';
import 'package:mone_weather_app/domain/weather/weather.dart';
import 'package:mone_weather_app/domain/weather/weather_failure.dart';

part 'weather_state.dart';
part 'weather_event.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherRepository _weatherRepository;
  final ILocationRepository _locationRepository;
  WeatherBloc(
    WeatherState initialState,
    this._weatherRepository,
    this._locationRepository,
  ) : super(initialState) {
    on<DateRangeChanged>((event, emit) async {
      await event.locationWeather.locationOrFailure.fold((l) => null,
          (location) async {
        emit(state.copyWith(
          locationWeatherList: List.from(state.locationWeatherList.map((e) {
            if (e == event.locationWeather) {
              return LocationWeather(
                  locationOrFailure: e.locationOrFailure,
                  weatherForecastOrFailure: e.weatherForecastOrFailure,
                  isLoadingForecast: true,
                  forecastDaysRange: e.forecastDaysRange);
            }
            return e;
          })),
        ));

        final updatedWeatherForecastOrFailure =
            await _weatherRepository.getWeatherForLocationByDaysRange(
                location: location, daysRange: event.dateRange);

        emit(state.copyWith(
          locationWeatherList: List.from(state.locationWeatherList.map((e) {
            if (e.locationOrFailure ==
                event.locationWeather.locationOrFailure) {
              return LocationWeather(
                  locationOrFailure: e.locationOrFailure,
                  weatherForecastOrFailure: updatedWeatherForecastOrFailure,
                  isLoadingForecast: false,
                  forecastDaysRange: event.dateRange);
            }
            return e;
          })),
        ));
      });
    });
    on<DeleteLocationWeather>((event, emit) async {
      await event.locationWeather.locationOrFailure.fold((l) => null,
          (location) async {
        emit(state.copyWith(
          locationWeatherList: List.from(state.locationWeatherList
              .where((e) => e != event.locationWeather)),
        ));
      });
    });
    on<AddLocationByName>((event, emit) async {
      emit(state.copyWith(isLoadingNewWeather: true));
      final locationOrFailure =
          await _locationRepository.getLocationByName(name: event.locationName);
      await _getNewWeatherForecastByLocationAndAdd(
        locationOrFailure: locationOrFailure,
        weatherRepository: _weatherRepository,
        state: state,
        emit: emit,
      );
      emit(state.copyWith(isLoadingNewWeather: false));
    });
    on<AddLocationByCurrentPosition>((event, emit) async {
      emit(state.copyWith(isLoadingNewWeather: true));
      final locationOrFailure = await _locationRepository.getCurrentLocation();
      await _getNewWeatherForecastByLocationAndAdd(
        locationOrFailure: locationOrFailure,
        weatherRepository: _weatherRepository,
        state: state,
        emit: emit,
      );
      emit(state.copyWith(isLoadingNewWeather: false));
    });
  }
}

_getNewWeatherForecastByLocationAndAdd({
  required Either<LocationFailure, Location> locationOrFailure,
  required IWeatherRepository weatherRepository,
  required WeatherState state,
  required Emitter<WeatherState> emit,
}) async {
  if (locationOrFailure.isRight()) {
    final location = locationOrFailure.getOrElse(() => throw "Cant be left");

    final weatherForecastOrFailure = await weatherRepository
        .getWeatherForLocationByDaysRange(location: location, daysRange: 7);
    _addNewWeatherLocation(
      weatherForecastOrFailure: weatherForecastOrFailure,
      locationOrFailure: locationOrFailure,
      state: state,
      emit: emit,
    );
  } else {
    _addNewWeatherLocation(
      locationOrFailure: locationOrFailure,
      state: state,
      emit: emit,
    );
  }
}

_addNewWeatherLocation({
  Either<WeatherFailure, List<Weather>>? weatherForecastOrFailure,
  required Either<LocationFailure, Location> locationOrFailure,
  required WeatherState state,
  required Emitter<WeatherState> emit,
}) {
  final newLocationWeatherList =
      List<LocationWeather>.from(state.locationWeatherList);
  if (weatherForecastOrFailure != null) {
    newLocationWeatherList.add(LocationWeather(
      locationOrFailure: locationOrFailure,
      weatherForecastOrFailure: weatherForecastOrFailure,
    ));
  } else {
    newLocationWeatherList.add(LocationWeather(
      locationOrFailure: locationOrFailure,
    ));
  }

  emit(state.copyWith(
    locationWeatherList: newLocationWeatherList,
  ));
}
