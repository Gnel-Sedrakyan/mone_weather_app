import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mone_weather_app/application/weather/weather_bloc.dart';
import 'package:mone_weather_app/application/weather/weather_carousel/weather_carousel_bloc.dart';
import 'package:mone_weather_app/presentation/pages/weather/widgets/weather_card.dart';

class WeatherForecastSlider extends StatelessWidget {
  const WeatherForecastSlider({
    super.key,
    required ScrollController scrollController,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<WeatherCarouselBloc, WeatherCarouselState>(
          builder: (BuildContext context, weatherCarouselState) {
        return BlocBuilder<WeatherBloc, WeatherState>(
            builder: (BuildContext context, weatherState) {
          if (weatherState.locationWeatherList.isNotEmpty) {
            return Scrollbar(
              thumbVisibility: true,
              controller: _scrollController,
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: weatherState
                      .locationWeatherList[
                          weatherCarouselState.selectedLocationIndex]
                      .weatherForecastOrFailure
                      .fold((l) => 0, (r) => r.length),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Center(
                    child: WeatherCard(
                      weather: weatherState
                          .locationWeatherList[
                              weatherCarouselState.selectedLocationIndex]
                          .weatherForecastOrFailure
                          .fold((l) => null, (r) => r[index]),
                    ),
                  ),
                ),
              ),
            );
          }
          return Container();
        });
      }),
    );
  }
}
