import 'package:flutter/material.dart';
import 'package:miludoteka/config/theme/app_colors.dart';

class AppColorScheme {
  static const light = ColorScheme(
  brightness: Brightness.light,

  primary: AppColors.primary,
  onPrimary: Colors.white,

  secondary: AppColors.secondary,
  onSecondary: Colors.white,

  tertiary: AppColors.tertiary,
  onTertiary: Colors.white,

  error: AppColors.error,
  onError: Colors.white,

  background: AppColors.lightBackground,
  onBackground: AppColors.textDark,

  surface: AppColors.lightSurface,
  onSurface: AppColors.textDark,

  // 🔥 importante para Material 3
  outline: Color(0xFFE2E8F0),
  surfaceContainerHighest: Color(0xFFF1F5F9),
);

  static const dark = ColorScheme(
    brightness: Brightness.dark,

    primary: AppColors.primary,
    onPrimary: Colors.white,

    secondary: AppColors.secondary,
    onSecondary: Colors.black,

    tertiary: AppColors.tertiary,
    onTertiary: Colors.white,

    error: AppColors.error,
    onError: Colors.white,

    background: AppColors.darkBackground,
    onBackground: AppColors.textLight,

    surface: AppColors.darkSurface,
    onSurface: AppColors.textLight,
  );
}
