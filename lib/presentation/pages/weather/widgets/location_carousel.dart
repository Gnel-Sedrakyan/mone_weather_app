import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mone_weather_app/application/weather/weather_bloc.dart';
import 'package:mone_weather_app/presentation/pages/weather/widgets/current_weather.dart';

class LocationCarousel extends StatelessWidget {
  const LocationCarousel({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final weatherState = context.read<WeatherBloc>().state;

    return PageView.builder(
      controller: pageController,
      itemBuilder: (context, index) {
        return CurrentWeatherInfo(
          locationWeather: weatherState.locationWeatherList[index],
        );
      },
      itemCount: weatherState.locationWeatherList.length,
    );
  }
}
