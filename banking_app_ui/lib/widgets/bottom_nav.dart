import 'package:flutter/material.dart';
import 'package:banking_app_ui/theme/theme_provider.dart';
import 'package:provider/provider.dart';

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
    final theme = Provider.of<ThemeProvider>(context);
    final isDark = theme.isDark;

    final iconFolder = 'lib/assets/icons/dark';

    return NavigationBarTheme(
      data: NavigationBarThemeData(
        labelTextStyle:
            MaterialStateProperty.resolveWith<TextStyle>((
              states,
            ) {
              if (states.contains(MaterialState.selected)) {
                return const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                );
              }
              return TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade500,
              );
            }),
      ),
      child: NavigationBar(
        height: 70,
        backgroundColor: Colors.white,
        indicatorColor: Colors.white,
        selectedIndex: index,
        onDestinationSelected: onTap,
        labelBehavior:
            NavigationDestinationLabelBehavior.alwaysShow,

        destinations: [
          NavigationDestination(
            icon: Image.asset(
              '$iconFolder/home.png',
              height: 20,
              width: 20,
              color: isDark
                  ? Colors.white54
                  : Colors.black54,
            ),
            selectedIcon: Image.asset(
              '$iconFolder/home.png',
              height: 20,
              width: 20,
            ),
            label: 'Home',
          ),

          NavigationDestination(
            icon: Image.asset(
              '$iconFolder/wallet.png',
              height: 20,
              width: 20,
              color: Colors.black54,
            ),
            selectedIcon: Image.asset(
              '$iconFolder/wallet.png',
              height: 20,
              width: 20,
            ),
            label: "Pocket",
          ),

          // center doc
          NavigationDestination(
            icon: _CenterScanIcon(iconFolder: iconFolder),
            label: '',
          ),
          NavigationDestination(
            icon: Image.asset(
              '$iconFolder/note.png',
              height: 20,
              width: 20,
              color: Colors.black54,
            ),
            selectedIcon: Image.asset(
              '$iconFolder/note.png',
              height: 20,
              width: 20,
            ),
            label: "History",
          ),

          NavigationDestination(
            icon: Image.asset(
              '$iconFolder/setting.png',
              height: 20,
              width: 20,
              color: Colors.black54,
            ),
            selectedIcon: Image.asset(
              '$iconFolder/setting.png',
              height: 20,
              width: 20,
            ),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final int index;
  final int currentIndex;
  final String iconPath;
  final ValueChanged<int>? onTap;
  final bool isCenterAction;

  const _NavItem({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.iconPath,
    this.onTap,
    this.isCenterAction = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final bool isSelected = index == currentIndex;

    final Color activeColor = isDark
        ? Colors.white
        : Colors.black;
    final Color inactiveColor = isDark
        ? Colors.white.withOpacity(0.5)
        : Colors.grey.shade500;

    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: () => onTap?.call(index),
      child: Row(
        children: [
          Image.asset(
            iconPath,
            height: 22,
            width: 22,
            color: isSelected ? activeColor : inactiveColor,
          ),
          if (isSelected) ...[
            const SizedBox(width: 6),
            Text(
              ["Home", "Pocket", "History", "More"][index],
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: activeColor,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

//center doc

class _CenterScanIcon extends StatelessWidget {
  final String iconFolder;
  const _CenterScanIcon({
    super.key,
    required this.iconFolder,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, 10),
      child: Container(
        height: 44,
        width: 64,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 18,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Center(
          child: Image.asset(
            '$iconFolder/scanner.png',
            height: 22,
            width: 22,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
