import 'package:flutter/material.dart';
import 'package:toko_app_flutter/style.dart';

ThemeData customTheme() {
  return ThemeData().copyWith(
      textTheme: textTheme(),
      colorScheme: colorScheme(),
      scaffoldBackgroundColor: colorScheme().surface,
      textButtonTheme: textButtonTheme);
}

TextTheme textTheme() {
  return TextTheme().copyWith(
      bodyLarge: textLarge,
      bodyMedium: textMedium,
      bodySmall: textSmall,
      titleLarge: textLargeTitle,
      titleMedium: textMediumTitle,
      titleSmall: textSmallTitle);
}

ColorScheme colorScheme() {
  return ColorScheme.dark(
    surface: Color(backgroundColor),
    primary: Color(primaryColor),
    onSurface: Colors.white,
    onPrimary: Colors.white,
  );
}
