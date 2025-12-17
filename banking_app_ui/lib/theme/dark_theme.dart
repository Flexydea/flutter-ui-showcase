import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF000000),

  textTheme: GoogleFonts.interTextTheme().apply(
    bodyColor: Colors.white,
    displayColor: Colors.white,
  ),
  fontFamily: 'PlusJakartaSans',

  colorScheme: ColorScheme.dark(
    primary: Colors.white,
    secondary: Colors.white70,
    background: Color(0xFF000000),
    surface: Color(0xFF1A1A1A),
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF000000),
    elevation: 0,
    centerTitle: false,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  ),

  dividerColor: Colors.white,

  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.all(Colors.white),
    trackColor: WidgetStateProperty.all(Color(0xFF007AFF)),
  ),
  cardColor: const Color(0xFF1A1A1A),
);
