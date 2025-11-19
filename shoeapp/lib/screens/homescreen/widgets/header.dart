import 'package:flutter/material.dart';
import 'package:shoeapp/app_theme.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'icon_badge.dart';

class Header extends StatelessWidget {
  final String name;
  const Header({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Left text
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome,',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium,
              ),
              const SizedBox(height: 2),
              Text(
                name,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium,
              ),
            ],
          ),
        ),

        // Right icons
        IconBadge(
          icon: Image.asset(
            'lib/assets/icons/mail.png',
            height: 22,
            width: 22,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(width: 8),
        IconBadge(
          icon: Image.asset(
            'lib/assets/icons/trolley.png',
            height: 22,
            width: 22,
            fit: BoxFit.contain,
          ),
          count: 3,
        ),
      ],
    );
  }
}
