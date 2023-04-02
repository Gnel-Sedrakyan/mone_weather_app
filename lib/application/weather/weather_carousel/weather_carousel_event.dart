part of 'weather_carousel_bloc.dart';

@freezed
abstract class WeatherCarouselEvent with _$WeatherCarouselEvent {
  const factory WeatherCarouselEvent.selectedLocationChanged(
      {required int newLocationIndex}) = SelectedLocationChanged;
  const factory WeatherCarouselEvent.pageOffsetChanged(
      {required double pageOffset}) = PageOffsetChanged;
}
