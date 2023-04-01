import 'package:flutter/material.dart';
import 'package:mone_weather_app/presentation/core/constants/colors.dart';
import 'package:mone_weather_app/presentation/core/constants/defalut_values.dart';

const primaryShadow = BoxShadow(
  color: primaryShadowColor,
  spreadRadius: defaultShadowSpreadRadius,
  blurRadius: defaultShadowBlurRadius,
  offset: defaultShadowOffset,
);

const defaultshadow = BoxShadow(
  color: defaultShadowColor,
  spreadRadius: defaultShadowSpreadRadius,
  blurRadius: defaultShadowBlurRadius,
  offset: defaultShadowOffset,
);

const primaryGradient = LinearGradient(
  colors: [
    textColorLightTheme,
    Color(0x00E8FCFF),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
