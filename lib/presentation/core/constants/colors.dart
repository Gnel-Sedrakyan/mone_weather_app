import 'package:flutter/material.dart';

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue, a = color.alpha;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      a / 255,
    );
  });
  return MaterialColor(color.value, swatch);
}

const borderColor = Color(0x0F000000);

const sunnyWeatherColor = Color(0xFF42C2FF);
const clearWeatherColor = Color(0xFF712B75);
const cloudyWeatherColor = Color(0xFFA8AAC4);
const snowyWeatherColor = Color(0xFF6BA7CC);

// Light Theme
const bgColorLightTheme = Color(0xFFE8FCFF);

const textColorLightTheme = Color(0xFFE8FCFF);
const bodyTextColorLightTheme = Color(0xCC6D7AAA);
