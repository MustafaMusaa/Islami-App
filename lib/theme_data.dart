import 'package:flutter/material.dart';
import 'package:islami/app_colors.dart';

class MyThemeData {
  static final lightMode = ThemeData(
      primaryColor: AppColors.PrimaryLightColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:
          const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
      textTheme: const TextTheme(
          bodyLarge: TextStyle(
        color: AppColors.BlackColor,
        fontSize: 30,
        fontWeight: FontWeight.w700,
        height: 47,
      )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.PrimaryLightColor,
          selectedItemColor: AppColors.BlackColor,
          unselectedItemColor: AppColors.WhiteColor,
          showUnselectedLabels: true));
}
