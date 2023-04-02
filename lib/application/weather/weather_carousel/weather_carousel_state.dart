part of 'weather_carousel_bloc.dart';

@freezed
@injectable
abstract class WeatherCarouselState with _$WeatherCarouselState {
  const WeatherCarouselState._();
  const factory WeatherCarouselState({
    required int selectedLocationIndex,
  }) = _WeatherCarouselState;

  @override
  @factoryMethod
  factory WeatherCarouselState.initial() => const WeatherCarouselState(
        selectedLocationIndex: 0,
      );
}
