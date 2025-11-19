import 'package:flutter/material.dart';
import '../app_theme.dart';
import 'icon_badge.dart';

class DeliveryHeader extends StatelessWidget {
  final String name;
  const DeliveryHeader({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Avatar
        const CircleAvatar(
          radius: 25,
          backgroundColor: AppTheme.primaryLight,
          child: Text(
            'GI',
            style: TextStyle(
              color: AppTheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 12),
        // Title
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivered To',
                style: TextStyle(color: AppTheme.primary),
              ),
              const SizedBox(height: 2),
              Text(
                name,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium,
              ),
            ],
          ),
        ),
        // Actions
        const IconBadge(
          icon: Icons.shopping_bag_outlined,
          count: 2,
        ),
        const SizedBox(width: 10),
        const IconBadge(
          icon: Icons.notifications,
          count: 0,
        ),
        const SizedBox(width: 10),
        IconBadge(
          icon: Icons.grid_view_rounded,
          onTap: () {},
        ),
      ],
    );
  }
}
