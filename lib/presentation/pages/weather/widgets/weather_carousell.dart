import 'package:flutter/material.dart';
import 'package:mone_weather_app/presentation/pages/weather/widgets/weather_card.dart';

class WeatherSlider extends StatelessWidget {
  const WeatherSlider({
    super.key,
    required ScrollController scrollController,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        thumbVisibility: true,
        controller: _scrollController,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: ListView.builder(
            controller: _scrollController,
            itemCount: 7,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Center(
              child: WeatherCard(
                index: index,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
