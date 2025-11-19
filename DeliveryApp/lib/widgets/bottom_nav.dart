import 'package:flutter/material.dart';
import '../app_theme.dart';

class BottomNav extends StatelessWidget {
  final int index;
  final ValueChanged<int> onTap;
  const BottomNav({
    super.key,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: index,
      onDestinationSelected: onTap,
      indicatorColor: AppTheme.primaryLight,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(
            Icons.home,
            color: AppTheme.primary,
          ),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.shopping_bag,
            color: AppTheme.textDark,
          ),
          label: 'Cart',
        ),
        NavigationDestination(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
        ),
        NavigationDestination(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
