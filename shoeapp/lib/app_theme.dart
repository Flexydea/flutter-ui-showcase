import 'package:flutter/material.dart';

class AppTheme {
  static const Color bg = Color(0xFFF7F8FA);
  static const Color textDark = Color(0xFF222222);
  static const Color textLight = Color(0xFF7A7A7A);
  static const Color cardingColor = Color(0xFFFFCF53);

  static ThemeData theme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: bg,
    fontFamily: 'Poppins',
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: textDark,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: textDark,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: textDark,
      ),
    ),
  );
}
