import 'package:eshop/app_theme.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onSeeAll;
  const SectionHeader({
    super.key,
    required this.title,
    required this.onSeeAll,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: AppTheme.textDark,
          ),
        ),
        // const Spacer(),
        InkWell(
          onTap: onSeeAll,
          child: Row(
            children: [
              Text(
                'See All',
                style: TextStyle(
                  color: AppTheme.textDark,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              SizedBox(width: 4),
              Icon(
                Icons.chevron_right,
                size: 18,
                // color: AppTheme.primary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
