import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mone_weather_app/application/weather/weather_bloc.dart';
import 'package:mone_weather_app/application/weather/weather_carousel/weather_carousel_bloc.dart';
import 'package:mone_weather_app/presentation/pages/weather/utils/weather_helpers.dart';
import 'package:mone_weather_app/presentation/pages/weather/widgets/location_carousel.dart';
import 'package:mone_weather_app/presentation/pages/weather/widgets/location_indicator.dart';

class WeatherInfoCarousell extends StatefulWidget {
  const WeatherInfoCarousell({
    super.key,
  });

  @override
  State<WeatherInfoCarousell> createState() => _WeatherInfoCarousellState();
}

class _WeatherInfoCarousellState extends State<WeatherInfoCarousell> {
  late PageController pageController;

  @override
  Widget build(BuildContext context) {
    final weatherCarouselBloc = context.read<WeatherCarouselBloc>();
    pageController = PageController();
    pageController.addListener(() {
      final pageOffset = pageController.page ?? 0.0;

      if (isPageChanged(
          pageOffset, weatherCarouselBloc.state.selectedLocationIndex)) {
        weatherCarouselBloc.add(WeatherCarouselEvent.selectedLocationChanged(
            newLocationIndex: pageOffset.floor()));
      }
    });
    return BlocBuilder<WeatherCarouselBloc, WeatherCarouselState>(
        builder: (BuildContext context, weatherCarouselState) {
      return BlocBuilder<WeatherBloc, WeatherState>(
          builder: (BuildContext context, weatherState) {
        return Stack(
          alignment: Alignment.bottomLeft,
          children: [
            LocationCarousel(pageController: pageController),
            const LocationIndicator(),
          ],
        );
      });
    });
  }
}
