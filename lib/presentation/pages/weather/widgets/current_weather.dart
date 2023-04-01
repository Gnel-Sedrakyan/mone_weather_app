import 'package:flutter/material.dart';
import 'package:mone_weather_app/presentation/core/asset_manager.dart';
import 'package:mone_weather_app/presentation/core/constants/colors.dart';
import 'package:mone_weather_app/presentation/core/constants/defalut_values.dart';
import 'package:mone_weather_app/presentation/core/constants/styles.dart';
import 'package:mone_weather_app/presentation/core/widgets/asset_icon.dart';
import 'package:mone_weather_app/presentation/core/widgets/gradient_text.dart';
import 'package:mone_weather_app/presentation/core/widgets/svg_asset_image.dart';

class CurrentWeatherInfo extends StatelessWidget {
  const CurrentWeatherInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: defaultPadding, top: 25),
      decoration: const BoxDecoration(
          color: sunnyWeatherColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(defaultBorderRadius),
            bottomRight: Radius.circular(defaultBorderRadius),
          )),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AssetIcon(
              icon: AssetIcons.pin,
              size: 12,
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'Armenia, Yerevan',
              style: TextStyle(fontSize: 14),
            ),
            const AssetIcon(
              icon: AssetIcons.chevron,
              size: 12,
            ),
          ],
        ),
        const Spacer(),
        const GradientText(
          '18°C',
          style: TextStyle(
            fontSize: 50,
            letterSpacing: 4,
            fontWeight: FontWeight.w500,
          ),
          gradient: primaryGradient,
        ),
        SizedBox(
          height: defaultSpacing,
        ),
        const SvgAssetImage(
          image: Assets.sun,
          height: 50,
          width: 50,
        ),
        SizedBox(
          height: defaultSpacing * 1.5,
        ),
        const Text(
          'Clear',
          style: TextStyle(fontSize: 12, letterSpacing: 4),
        ),
        const Spacer(),
        const Text(
          'Monday',
          style: TextStyle(fontSize: 9, letterSpacing: 1.6),
        ),
        const Text(
          '24/24/24',
          style: TextStyle(fontSize: 9, letterSpacing: 1.6),
        ),
        const SizedBox(
          height: defaultSpacing,
        ),
        const Text('...'),
      ]),
    );
  }
}
