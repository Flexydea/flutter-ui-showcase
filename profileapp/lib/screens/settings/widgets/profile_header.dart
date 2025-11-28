import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: theme.cardColor, //color change here
        borderRadius: BorderRadius.circular(12),
        boxShadow: isDark
            ? []
            : [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 14,
                  offset: const Offset(0, 6),
                ),
              ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Color(0xFFE6F2FF),
            child: Image.asset(
              'lib/assets/images/woman.png',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Godwin Igbokwe',
                        style: theme.textTheme.bodyLarge
                            ?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: isDark
                                  ? Colors.white
                                  : Colors.black,
                            ),
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.verified_rounded,
                        size: 16,
                        color: Color(0xFFFFC107),
                      ),
                    ],
                  ),

                  const SizedBox(height: 2),
                  Text(
                    'Flexyigbokwe@gmail.com',
                    style: theme.textTheme.bodySmall
                        ?.copyWith(
                          color: isDark
                              ? Colors.white.withOpacity(
                                  0.6,
                                )
                              : Colors.black54,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
