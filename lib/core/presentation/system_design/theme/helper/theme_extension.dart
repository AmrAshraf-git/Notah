import 'package:flutter/material.dart';
import '../color/notah_color_scheme.dart';

extension ThemeContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;
  NotahColorScheme get notahColorScheme => theme.extension<NotahColorScheme>()!;
}