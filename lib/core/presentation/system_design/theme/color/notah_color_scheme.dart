import 'package:flutter/material.dart';
import 'notah_color_palette.dart';

@immutable
class NotahColorScheme extends ThemeExtension<NotahColorScheme> {
  final Color success;
  final Color warning;
  final Color danger;
  // ============== Text ==============
  final Color title;
  final Color body;
  final Color hint;
  final Color textPrimary;
  final Color textSecondary;
  final Color textBody;
  final Color textWarning;


  // ============== Border & Stroke ==============
  final Color stroke;
  final Color disabled;

  // ============== Semantic: Error ==============
  final Color error;
  final Color onError;

  // ============== Cards  ==============
  final Color cardBackground;
  final Color cardBackgroundSecondary;

  // ============== Bars  ==============
  final Color bottomNavBarBgColor;
  final Color statusBarColor;

  const NotahColorScheme._({
    required this.success,
    required this.warning,
    required this.danger,
    required this.title,
    required this.body,
    required this.hint,
    required this.textPrimary,
    required this.textSecondary,
    required this.textBody,
    required this.textWarning,
    required this.stroke,
    required this.disabled,
    required this.error,
    required this.onError,
    required this.cardBackground,
    required this.cardBackgroundSecondary,
    required this.bottomNavBarBgColor,
    required this.statusBarColor,
  });

  static const NotahColorScheme dark = NotahColorScheme._(
    success: NotahColorPalette.success,
    warning: NotahColorPalette.warning,
    danger: NotahColorPalette.danger,
    title: NotahColorPalette.gray900,
    body: NotahColorPalette.gray600,
    hint: NotahColorPalette.gray400,
    textPrimary: NotahColorPalette.offWhite,
    textSecondary: NotahColorPalette.textSecondary,
    textBody: NotahColorPalette.textBody,
    textWarning: NotahColorPalette.textWarning,
    stroke: NotahColorPalette.gray200,
    disabled: NotahColorPalette.gray200,
    error: NotahColorPalette.danger,
    onError: NotahColorPalette.danger,
    cardBackground: NotahColorPalette.white,
    cardBackgroundSecondary: NotahColorPalette.gray100,
    bottomNavBarBgColor: NotahColorPalette.offBlack,
    statusBarColor: NotahColorPalette.statusBarColor,
  );
  static const NotahColorScheme light = NotahColorScheme._(
    success: NotahColorPalette.success,
    warning: NotahColorPalette.warning,
    danger: NotahColorPalette.danger,
    title: NotahColorPalette.gray900,
    body: NotahColorPalette.gray600,
    hint: NotahColorPalette.gray400,
    textPrimary: NotahColorPalette.textPrimary,
    textSecondary: NotahColorPalette.textSecondary,
    textBody: NotahColorPalette.textBody,
    textWarning: NotahColorPalette.textWarning,
    stroke: NotahColorPalette.gray200,
    disabled: NotahColorPalette.gray200,
    error: NotahColorPalette.danger,
    onError: NotahColorPalette.danger,
    cardBackground: NotahColorPalette.white,
    cardBackgroundSecondary: NotahColorPalette.gray100,
    bottomNavBarBgColor: NotahColorPalette.offWhite,
    statusBarColor: NotahColorPalette.statusBarColor,
  );

  @override
  ThemeExtension<NotahColorScheme> copyWith({
    Color? success,
    Color? warning,
    Color? danger,
    Color? title,
    Color? body,
    Color? hint,
    Color? textPrimary,
    Color? textSecondary,
    Color? textBody,
    Color? textWarning,
    Color? stroke,
    Color? disabled,
    Color? error,
    Color? onError,
    Color? cardBackground,
    Color? cardBackgroundSecondary,
    Color? bottomNavBarBgColor,
    Color? statusBarColor,
  }) {
    return NotahColorScheme._(
      success: success ?? this.success,
      warning: warning ?? this.warning,
      danger: danger ?? this.danger,
      title: title ?? this.title,
      body: body ?? this.body,
      hint: hint ?? this.hint,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textBody: textBody ?? this.textBody,
      textWarning: textWarning ?? this.textWarning,
      stroke: stroke ?? this.stroke,
      disabled: disabled ?? this.disabled,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      cardBackground: cardBackground ?? this.cardBackground,
      cardBackgroundSecondary: cardBackgroundSecondary ?? this.cardBackgroundSecondary,
      bottomNavBarBgColor: bottomNavBarBgColor ?? this.bottomNavBarBgColor,
      statusBarColor: statusBarColor ?? this.statusBarColor,
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
      title: Color.lerp(title, other.title, t),
      body: Color.lerp(body, other.body, t),
      hint: Color.lerp(hint, other.hint, t),
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t),
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t),
      textBody: Color.lerp(textBody, other.textBody, t),
      textWarning: Color.lerp(textWarning, other.textWarning, t),
      stroke: Color.lerp(stroke, other.stroke, t),
      disabled: Color.lerp(disabled, other.disabled, t),
      error: Color.lerp(error, other.error, t),
      onError: Color.lerp(onError, other.onError, t),
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t),
      cardBackgroundSecondary: Color.lerp(cardBackgroundSecondary, other.cardBackgroundSecondary, t),
      bottomNavBarBgColor: Color.lerp(bottomNavBarBgColor, other.bottomNavBarBgColor, t),
      statusBarColor: Color.lerp(statusBarColor, other.statusBarColor, t),
    );
  }
}