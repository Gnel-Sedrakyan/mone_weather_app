import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mone_weather_app/application/weather/weather_bloc.dart';
import 'package:mone_weather_app/application/weather/weather_carousel/weather_carousel_bloc.dart';
import 'package:mone_weather_app/presentation/core/asset_manager.dart';
import 'package:mone_weather_app/presentation/core/constants/colors.dart';
import 'package:mone_weather_app/presentation/core/constants/defalut_values.dart';
import 'package:mone_weather_app/presentation/core/widgets/asset_icon.dart';

class DayRangeSelect extends StatelessWidget {
  const DayRangeSelect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCarouselBloc, WeatherCarouselState>(
        builder: (BuildContext context, weatherCarouselState) {
      return BlocBuilder<WeatherBloc, WeatherState>(
          builder: (BuildContext context, weatherState) {
        return Row(
          children: [
            const SizedBox(
              width: defaultSpacing * 1.5,
            ),
            if (weatherState.locationWeatherList.isNotEmpty)
              Text(
                '${weatherState.locationWeatherList[weatherCarouselState.selectedLocationIndex].forecastDaysRange} Days',
                style: const TextStyle(
                    color: bodyTextColorLightTheme, fontSize: 9),
              ),
            const Spacer(),
            PopupMenuButton(
                icon: const AssetIcon(
                  icon: AssetIcons.chevronRight,
                  size: 7,
                  color: bodyTextColorLightTheme,
                ),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem<int>(
                      value: 3,
                      child: Text(
                        "3 Days",
                        style: TextStyle(color: bodyTextColorLightTheme),
                      ),
                    ),
                    const PopupMenuItem<int>(
                      value: 7,
                      child: Text(
                        "7 Days",
                        style: TextStyle(color: bodyTextColorLightTheme),
                      ),
                    ),
                    const PopupMenuItem<int>(
                      value: 30,
                      child: Text(
                        "30 Days",
                        style: TextStyle(color: bodyTextColorLightTheme),
                      ),
                    ),
                  ];
                },
                onSelected: (value) {
                  context.read<WeatherBloc>().add(WeatherEvent.dateRangeChanged(
                        dateRange: value,
                        locationWeather: weatherState.locationWeatherList[
                            weatherCarouselState.selectedLocationIndex],
                      ));
                }),
            const SizedBox(
              width: defaultSpacing * 1.5,
            ),
          ],
        );
      });
    });
  }
}
