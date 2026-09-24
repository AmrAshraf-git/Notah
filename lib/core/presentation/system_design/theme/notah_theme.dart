import 'package:flutter/material.dart';
import 'color/notah_color_palette.dart';
import 'color/notah_color_scheme.dart';

class NotahTheme {
  const NotahTheme._();

  static ThemeData dark(){
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Manrope',
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: NotahColorPalette.primary,
        primary: NotahColorPalette.primary,
        secondary: NotahColorPalette.secondary,
        tertiary: NotahColorPalette.tertiary,
      ),
      textTheme: const TextTheme(),
      extensions: const [
        NotahColorScheme.dark,
      ]
    );
  }

  static ThemeData light(){
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Manrope',
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: NotahColorPalette.primary,
        primary: NotahColorPalette.primary,
        secondary: NotahColorPalette.secondary,
        tertiary: NotahColorPalette.tertiary,
      ),
      textTheme: const TextTheme(),
      extensions: const [
        NotahColorScheme.light,
      ]
    );
  }

}