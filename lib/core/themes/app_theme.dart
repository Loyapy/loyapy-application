import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.scaffoldBGColor,
    appBarTheme:  AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.black,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.darkBGColor,
    appBarTheme:  AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
    ),
  );
}
