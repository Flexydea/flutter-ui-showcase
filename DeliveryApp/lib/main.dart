import 'package:eshop/app_theme.dart';
import 'package:eshop/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const eshopApp());
}

class eshopApp extends StatelessWidget {
  const eshopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-shop App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const HomeScreen(),
    );
  }
}
