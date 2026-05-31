import 'package:flutter/material.dart';
import 'notah_color_palette.dart';

@immutable
class NotahColorScheme extends ThemeExtension<NotahColorScheme> {
  final Color success;
  final Color warning;
  final Color danger;

  const NotahColorScheme._({
    required this.success,
    required this.warning,
    required this.danger,
  });

  static const NotahColorScheme dark = NotahColorScheme._(
    success: NotahColorPalette.success,
    warning: NotahColorPalette.warning,
    danger: NotahColorPalette.danger,
  );
  static const NotahColorScheme light = NotahColorScheme._(
    success: NotahColorPalette.success,
    warning: NotahColorPalette.warning,
    danger: NotahColorPalette.danger,
  );

  @override
  ThemeExtension<NotahColorScheme> copyWith({
    Color? success,
    Color? warning,
    Color? danger,
  }) {
    return NotahColorScheme._(
      success: success ?? this.success,
      warning: warning ?? this.warning,
      danger: danger ?? this.danger,
    );
  }

  @override
  ThemeExtension<NotahColorScheme> lerp(covariant ThemeExtension<NotahColorScheme>? other, double t) {
    if (other is! NotahColorScheme) {
      return this;
    }
    return copyWith(
      success: Color.lerp(success, other.success, t),
      warning: Color.lerp(warning, other.warning, t),
      danger: Color.lerp(danger, other.danger, t),
    );
  }
}