import 'package:flutter/material.dart';
import 'notah_color_palette.dart';

@immutable
class NotahColorScheme extends ThemeExtension<NotahColorScheme> {
  final Color primary ;
  final Color secondary ;
  final Color tertiary ;

  final Color info ;
  final Color success;
  final Color warning;
  final Color danger;
  // ============== Text ==============
  final Color textTitle;
  final Color textHint;
  final Color textPrimary;
  final Color textSecondary;
  final Color textBody;
  final Color textWarning;
  final Color textDisabled;

  // ============== Border & Stroke ==============
  final Color stroke;
  final Color disabled;
  final Color border;

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
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.info,
    required this.success,
    required this.warning,
    required this.danger,
    required this.textTitle,
    required this.textHint,
    required this.textPrimary,
    required this.textSecondary,
    required this.textBody,
    required this.textWarning,
    required this.textDisabled,
    required this.stroke,
    required this.border,
    required this.disabled,
    required this.error,
    required this.onError,
    required this.cardBackground,
    required this.cardBackgroundSecondary,
    required this.bottomNavBarBgColor,
    required this.statusBarColor,
  });

  static const NotahColorScheme dark = NotahColorScheme._(
    primary: NotahColorPalette.primary,
    secondary: NotahColorPalette.secondary,
    tertiary: NotahColorPalette.tertiary,
    info: NotahColorPalette.info,
    success: NotahColorPalette.success,
    warning: NotahColorPalette.warning,
    danger: NotahColorPalette.danger,
    textTitle: NotahColorPalette.gray900,
    textHint: NotahColorPalette.gray400,
    textDisabled: NotahColorPalette.gray600,
    textPrimary: NotahColorPalette.offWhite,
    textSecondary: NotahColorPalette.textSecondary,
    textBody: NotahColorPalette.textBody,
    textWarning: NotahColorPalette.textWarning,
    stroke: NotahColorPalette.gray200,
    border: NotahColorPalette.blue600,
    disabled: NotahColorPalette.gray200,
    error: NotahColorPalette.danger,
    onError: NotahColorPalette.danger,
    cardBackground: NotahColorPalette.white,
    cardBackgroundSecondary: NotahColorPalette.gray100,
    bottomNavBarBgColor: NotahColorPalette.offBlack,
    statusBarColor: NotahColorPalette.statusBarColor,
  );
  static const NotahColorScheme light = NotahColorScheme._(
    primary: NotahColorPalette.primary,
    secondary: NotahColorPalette.secondary,
    tertiary: NotahColorPalette.tertiary,
    info: NotahColorPalette.info,
    success: NotahColorPalette.success,
    warning: NotahColorPalette.warning,
    danger: NotahColorPalette.danger,
    textTitle: NotahColorPalette.gray900,
    textDisabled: NotahColorPalette.gray600,
    textHint: NotahColorPalette.gray400,
    textPrimary: NotahColorPalette.textPrimary,
    textSecondary: NotahColorPalette.textSecondary,
    textBody: NotahColorPalette.textBody,
    textWarning: NotahColorPalette.textWarning,
    stroke: NotahColorPalette.gray200,
    border: NotahColorPalette.blue600,
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
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? info,
    Color? success,
    Color? warning,
    Color? danger,
    Color? textTitle,
    Color? textBody,
    Color? textHint,
    Color? textPrimary,
    Color? textSecondary,
    Color? textWarning,
    Color? textDisabled,
    Color? stroke,
    Color? border,
    Color? disabled,
    Color? error,
    Color? onError,
    Color? cardBackground,
    Color? cardBackgroundSecondary,
    Color? bottomNavBarBgColor,
    Color? statusBarColor,
  }) {
    return NotahColorScheme._(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary ?? this.tertiary,
      info: info ?? this.info,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      danger: danger ?? this.danger,
      textTitle: textTitle ?? this.textTitle,
      textHint: textHint ?? this.textHint,
      textDisabled: textDisabled ?? this.textDisabled,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textBody: textBody ?? this.textBody,
      textWarning: textWarning ?? this.textWarning,
      stroke: stroke ?? this.stroke,
      border: border ?? this.border,
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
      textTitle: Color.lerp(textTitle, other.textTitle, t),
      textDisabled: Color.lerp(textDisabled, other.textDisabled, t),
      textHint: Color.lerp(textHint, other.textHint, t),
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t),
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t),
      textBody: Color.lerp(textBody, other.textBody, t),
      textWarning: Color.lerp(textWarning, other.textWarning, t),
      stroke: Color.lerp(stroke, other.stroke, t),
      border: Color.lerp(border, other.border, t),
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