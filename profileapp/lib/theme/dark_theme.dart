import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,

  scaffoldBackgroundColor: Colors.black,

  cardColor: const Color(0xFF1A1A1A),
  fontFamily: GoogleFonts.inter().fontFamily,
  textTheme: GoogleFonts.interTextTheme(),

  colorScheme: const ColorScheme.dark(
    primary: Colors.white,
    secondary: Colors.blueAccent,
  ),
);
