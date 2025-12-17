import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,

  // Background
  scaffoldBackgroundColor: const Color(
    0xFFEDEDED,
  ), // soft grey like UI
  // Global font (you've registered PlusJakartaSans in pubspec)
  fontFamily: 'PlusJakartaSans',

  // Colors
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF1E1E1E),
    secondary: Color(0xFF4A4A4A),
  ),

  cardColor: Colors.white,
  dividerColor: const Color(0xFFE3E3E3),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFF5F5F7),
    elevation: 0,
    centerTitle: false,
    titleTextStyle: TextStyle(
      fontFamily: 'PlusJakartaSans',
      color: Colors.black87,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  ),

  // Switch styling (for dark mode toggle later)
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith<Color>(
      (states) => Colors.white,
    ),
    trackColor: MaterialStateProperty.resolveWith<Color>(
      (states) => Colors.black87,
    ),
  ),

  // Optional: bottom navbar text/icon colors
  bottomNavigationBarTheme:
      const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
);
