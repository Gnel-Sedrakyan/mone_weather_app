import 'package:flutter/material.dart';
import 'package:mone_weather_app/presentation/core/constants/colors.dart';
import 'package:mone_weather_app/presentation/core/constants/defalut_values.dart';

class AppTheme {
  static TextTheme _buildTextTheme(TextTheme base) {
    const String fontName = 'Rubik';
    return base.copyWith(
      displayLarge: base.displayLarge?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      displayMedium: base.displayMedium?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      displaySmall: base.displaySmall?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      headlineMedium: base.headlineMedium?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      headlineSmall: base.headlineSmall?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      titleLarge: base.titleLarge?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      labelLarge: base.labelLarge?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      bodySmall: base.bodySmall?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      bodyLarge: base.bodyLarge?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      bodyMedium: base.bodyMedium?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      titleMedium: base.titleMedium?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      titleSmall: base.titleSmall?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
      labelSmall: base.labelSmall?.copyWith(
        fontFamily: fontName,
        color: textColorLightTheme,
      ),
    );
  }

  static ThemeData buildLightTheme() {
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      background: bgColorLightTheme,
    );

    final ThemeData baseThemeData = ThemeData.light();
    return baseThemeData.copyWith(
      shadowColor: defaultShadowColor,
      appBarTheme: const AppBarTheme(
          backgroundColor: bgColorLightTheme,
          foregroundColor: textColorLightTheme),
      colorScheme: colorScheme,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      canvasColor: Colors.white,
      scaffoldBackgroundColor: bgColorLightTheme,
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
            side: const BorderSide(color: Colors.red)),
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: _buildTextTheme(baseThemeData.textTheme),
      primaryTextTheme: _buildTextTheme(baseThemeData.primaryTextTheme),
      platform: TargetPlatform.iOS,
    );
  }
}
