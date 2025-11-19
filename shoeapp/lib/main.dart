import 'package:flutter/material.dart';
import 'package:shoeapp/app_theme.dart';
import 'package:shoeapp/screens/homescreen/homescreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoe App',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: const Homescreen(),
    );
  }
}
