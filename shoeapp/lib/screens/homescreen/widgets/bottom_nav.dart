import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navItem('lib/assets/icons/home.png', 0, 'Home'),
          navItem(
            'lib/assets/icons/lists.png',
            1,
            'Orders',
          ),
          navItem(
            'lib/assets/icons/price-tag.png',
            2,
            'Discount',
          ),
          navItem(
            'lib/assets/icons/bell.png',
            3,
            'Notifications',
          ),
          navItem(
            'lib/assets/icons/user.png',
            4,
            'Profile',
          ),
        ],
      ),
    );
  }

  Widget navItem(String asset, int index, String label) {
    final bool selected = currentIndex == index;

    return InkWell(
      onTap: () => onTap(index),
      borderRadius: BorderRadius.circular(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            asset,
            height: 24,
            width: 24,
            color: selected
                ? Colors.black
                : Colors.grey.shade500,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: selected
                  ? Colors.black
                  : Colors.grey.shade500,
            ),
          ),
        ],
      ),
    );
  }
}
