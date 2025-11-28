import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profileapp/screens/settings/settings_screen.dart';
import 'package:profileapp/theme/dark_theme.dart';
import 'package:profileapp/theme/light_theme.dart';
import 'package:profileapp/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: theme.isDark
          ? ThemeMode.dark
          : ThemeMode.light,

      home: SettingsScreen(),
    );
  }
}
