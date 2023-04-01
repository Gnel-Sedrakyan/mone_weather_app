import 'package:flutter/material.dart';
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
    return Row(
      children: const [
        SizedBox(
          width: defaultSpacing * 1.5,
        ),
        Text(
          '7 Days',
          style: TextStyle(color: bodyTextColorLightTheme, fontSize: 9),
        ),
        Spacer(),
        AssetIcon(
          icon: AssetIcons.chevronRight,
          size: 7,
          color: bodyTextColorLightTheme,
        ),
        SizedBox(
          width: defaultSpacing * 1.5,
        ),
      ],
    );
  }
}
