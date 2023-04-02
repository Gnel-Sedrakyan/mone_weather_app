import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mone_weather_app/application/weather/weather_bloc.dart';
import 'package:mone_weather_app/application/weather/weather_carousel/weather_carousel_bloc.dart';
import 'package:mone_weather_app/presentation/core/asset_manager.dart';
import 'package:mone_weather_app/presentation/core/constants/colors.dart';
import 'package:mone_weather_app/presentation/core/constants/defalut_values.dart';
import 'package:mone_weather_app/presentation/core/widgets/asset_icon.dart';

class LocationIndicator extends StatefulWidget {
  const LocationIndicator({
    super.key,
  });

  @override
  State<LocationIndicator> createState() => _LocationIndicatorState();
}

class _LocationIndicatorState extends State<LocationIndicator> {
  bool isOpenTextField = false;
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, bottom: defaultPadding),
      child: BlocBuilder<WeatherCarouselBloc, WeatherCarouselState>(
          builder: (BuildContext context, weatherCarouselState) {
        return BlocBuilder<WeatherBloc, WeatherState>(
            builder: (BuildContext context, weatherState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      const AssetIcon(
                        icon: AssetIcons.pin,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      if (weatherState.locationWeatherList.isNotEmpty)
                        Text(
                          weatherState
                              .locationWeatherList[
                                  weatherCarouselState.selectedLocationIndex]
                              .locationOrFailure
                              .fold((l) => "Location Does Not Exist",
                                  (location) => location.name),
                          style: const TextStyle(fontSize: 14),
                        ),
                      if (!weatherState.isLoadingNewWeather)
                        InkWell(
                          onTap: () {
                            setState(() {
                              isOpenTextField = !isOpenTextField;
                            });
                          },
                          child: const AssetIcon(
                            icon: AssetIcons
                                .chevron, //TODO lottie animation for chevron up, down
                            size: 12,
                          ),
                        )
                      else
                        const SizedBox(
                          height: 12,
                          width: 12,
                          child: CircularProgressIndicator(),
                        ),
                      const Spacer(),
                      PopupMenuButton(
                          icon: const Icon(
                            Icons.more_vert,
                            color: textColorLightTheme,
                          ),
                          itemBuilder: (context) {
                            return [
                              const PopupMenuItem<int>(
                                value: 3,
                                child: Text(
                                  "Delete",
                                  style:
                                      TextStyle(color: bodyTextColorLightTheme),
                                ),
                              ),
                            ];
                          },
                          onSelected: (value) {
                            if (weatherState.locationWeatherList.length > 1) {
                              //TODO remove condition after creating screen without weather info
                              context
                                  .read<WeatherBloc>()
                                  .add(WeatherEvent.deleteLocationWeather(
                                    locationWeather:
                                        weatherState.locationWeatherList[
                                            weatherCarouselState
                                                .selectedLocationIndex],
                                  ));
                            }
                          }),
                    ],
                  ),
                  if (isOpenTextField)
                    SizedBox(
                      width: 200,
                      child: TextField(
                        //TODO check if empty
                        controller: _controller,
                        decoration: InputDecoration(
                          fillColor: textColorLightTheme,
                          iconColor: textColorLightTheme,
                          focusColor: textColorLightTheme,
                          suffixIconColor: textColorLightTheme,
                          hintText: 'Enter Location',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: () {
                              context.read<WeatherBloc>().add(
                                  WeatherEvent.addLocationByName(
                                      locationName: _controller.text));
                              setState(() {
                                isOpenTextField = false;
                              });
                            },
                            icon: const Icon(Icons.add),
                          ),
                        ),
                      ),
                    )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0;
                      i < weatherState.locationWeatherList.length;
                      i++) ...[
                    //TODO refactor
                    AnimatedContainer(
                      key: ValueKey("page-indicator$i"),
                      height: 6,
                      width: 6,
                      margin: const EdgeInsets.only(left: 4),
                      decoration: BoxDecoration(
                        color: i == weatherCarouselState.selectedLocationIndex
                            ? textColorLightTheme
                            : null,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: textColorLightTheme,
                          width: 1.0,
                        ),
                      ),
                      duration: const Duration(microseconds: 500),
                    ),
                  ]
                ],
              ),
            ],
          );
        });
      }),
    );
  }
}
