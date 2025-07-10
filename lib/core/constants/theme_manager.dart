import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/colors_pallete.dart';

abstract class ThemeManager {
  static ThemeData themeData = ThemeData(
    primaryColor: ColorPallete.primaryColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorPallete.primaryColor,
      selectedIconTheme: IconThemeData(color: Colors.white),
      showSelectedLabels: true,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black54,
      showUnselectedLabels: false,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        color: Colors.white,
        fontFamily: 'Janna',
        fontWeight: FontWeight.w700,
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontSize: 36,
        fontFamily: 'Janna',
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontFamily: 'Janna',
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontFamily: 'Janna',
        color: Color(0xFFFEFFE8),
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontFamily: 'Janna',
        color: Color(0xFFFEFFE8),
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontFamily: 'Janna',
        color: Color(0xFFFEFFE8),
        fontWeight: FontWeight.w700,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontFamily: 'Janna',
        color: Color(0xFFFEFFE8),
        fontWeight: FontWeight.w700,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
  );
}
