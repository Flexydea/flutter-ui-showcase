import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../models/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant item;
  const RestaurantCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage(
            'lib/assets/placeholder_bg.jpg',
          ), // optional; remove if no asset
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Stack(
        children: [
          // Simulated interior photo block
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  // color: AppTheme.primaryLight,
                ),
              ),
            ),
          ),
          // Overlay info
          Positioned(
            left: 16,
            bottom: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    shadows: [
                      Shadow(
                        blurRadius: 6,
                        color: Colors.black45,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item.tags,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    shadows: [
                      Shadow(
                        blurRadius: 6,
                        color: Colors.black45,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Rating
          Positioned(
            right: 16,
            top: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    item.rating.toStringAsFixed(1),
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Badges
          Positioned(
            right: 16,
            bottom: 16,
            child: Row(
              children: [
                _pill(item.badge),
                const SizedBox(width: 8),
                _pill(item.time, icon: Icons.schedule),
              ],
            ),
          ),
          // Heart
          Positioned(
            left: 16,
            top: 16,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Padding(
                padding: EdgeInsets.all(6),
                child: Icon(
                  Icons.favorite,
                  size: 18,
                  color: AppTheme.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _pill(String text, {IconData? icon}) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(icon, size: 14),
            const SizedBox(width: 4),
          ],
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
