import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'weather_carousel_state.dart';
part 'weather_carousel_event.dart';
part 'weather_carousel_bloc.freezed.dart';

@injectable
class WeatherCarouselBloc
    extends Bloc<WeatherCarouselEvent, WeatherCarouselState> {
  WeatherCarouselBloc(
    WeatherCarouselState initialState,
  ) : super(initialState) {
    on<SelectedLocationChanged>((event, emit) async {
      emit(state.copyWith(selectedLocationIndex: event.newLocationIndex));
    });
  }
}
