import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int>? onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return SafeArea(
      top: false,
      child: FractionallySizedBox(
        widthFactor: 0.8,
        // padding: EdgeInsets.all(10),
        child: Container(
          height: 64,
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: BorderRadius.circular(32),
            boxShadow: isDark
                ? []
                : [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      blurRadius: 18,
                      offset: const Offset(0, 6),
                    ),
                  ],
          ),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
            children: [
              _NavItem(
                index: 0,
                currentIndex: currentIndex,
                iconPath: 'lib/assets/icons/home.png',
                label: 'Home',
                onTap: onTap,
                color: theme.cardColor,
              ),
              _NavItem(
                index: 1,
                currentIndex: currentIndex,
                iconPath: 'lib/assets/icons/calendar.png',
                label: 'Cards',
                onTap: onTap,
                color: theme.cardColor,
              ),
              _NavItem(
                index: 2,
                currentIndex: currentIndex,
                iconPath: 'lib/assets/icons/ribbon.png',
                label: 'Stats',
                onTap: onTap,
                color: theme.cardColor,
              ),
              _NavItem(
                index: 3,
                currentIndex: currentIndex,
                iconPath: 'lib/assets/icons/more.png',
                label: '',
                color: Colors.blue,

                onTap: onTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final int index;
  final int currentIndex;
  final String iconPath;
  final String label;
  final Color color;
  final ValueChanged<int>? onTap;

  const _NavItem({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.iconPath,
    required this.label,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = index == currentIndex;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final activeColor = isDark ? Colors.blue : Colors.blue;
    final inactiveColor = isDark
        ? Colors.white.withOpacity(0.4)
        : Colors.grey.shade500;

    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: () => onTap?.call(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(
          horizontal: isSelected ? 14 : 0,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? (isDark
                    ? Colors.white.withOpacity(0.05)
                    : Colors.black.withOpacity(0.05))
              : Colors.transparent,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            // Tint PNG icon
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                isSelected ? activeColor : inactiveColor,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                iconPath,
                height: 22,
                width: 22,
              ),
            ),

            if (isSelected) ...[
              const SizedBox(width: 6),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: activeColor,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
