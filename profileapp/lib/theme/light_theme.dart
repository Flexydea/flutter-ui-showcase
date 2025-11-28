import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.grey.shade200,

  cardColor: Colors.white,

  fontFamily: GoogleFonts.inter().fontFamily,
  textTheme: GoogleFonts.interTextTheme(),

  colorScheme: const ColorScheme.light(
    primary: Color(0xFF1B84FF),
    secondary: Color(0xFF1B84FF),
  ),
);
