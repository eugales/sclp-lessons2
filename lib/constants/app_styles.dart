import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lessons2/constants/app_colors.dart';

class AppStyles {
  // total
  static const s10w500 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.title,
  );

  static const s12w400 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.title,
  );

  static const s14w500 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.title);

  // searcher text style
  static const s16w400 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.title,
  );

  // title
  static const s16w500 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.title,
  );

  static final dark = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.dark,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.dark,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark),
    ),
    backgroundColor: AppColors.dark,
    textTheme: TextTheme(
      titleLarge: s16w500.copyWith(
        color: AppColors.light,
      ),
      titleMedium: s12w400.copyWith(
        letterSpacing: 1.5,
      ),
      titleSmall: s12w400.copyWith(
        color: AppColors.subtitleDark,
        letterSpacing: 0.5,
      ),
    ),
  );

  static final light = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.light,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.light,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light),
    ),
    backgroundColor: AppColors.light,
    textTheme: TextTheme(
      titleLarge: s16w500.copyWith(
        color: AppColors.title,
      ),
      titleMedium: s10w500.copyWith(
        letterSpacing: 1.5,
      ),
      titleSmall: s12w400.copyWith(
        color: AppColors.subtitle,
        letterSpacing: 0.5,
      ),
    ),
  );
}