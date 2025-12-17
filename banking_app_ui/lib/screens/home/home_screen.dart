import 'package:banking_app_ui/screens/home/widgets/home_content.dart';
import 'package:banking_app_ui/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback? onOpenDetails;

  const HomeScreen({super.key, this.onOpenDetails});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildBodyForIndex(_currentIndex),
      ),
      bottomNavigationBar: BottomNav(
        index: _currentIndex,
        onTap: (newIndex) {
          setState(() => _currentIndex = newIndex);
        },
      ),
    );
  }

  Widget _buildBodyForIndex(int newIndex) {
    switch (newIndex) {
      case 0:
        return const HomeContent();
      case 1:
        return const Center(child: Text('Home screen'));
      case 2:
        return const Center(child: Text('Total Savings '));
      case 3:
        return const Center(child: Text('Pocket '));
      case 4:
        return const Center(child: Text('Total assets '));
      default:
        return const HomeContent();
    }
  }
}
