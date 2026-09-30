import 'package:flutter/material.dart';
import '../color/notah_color_scheme.dart';

extension ThemeContextExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
  NotahColorScheme get notahColorTheme => Theme.of(this).extension<NotahColorScheme>()!;
}