import 'package:flutter/material.dart';

class DeleteAccountTile extends StatelessWidget {
  final VoidCallback? onTap;

  const DeleteAccountTile({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final isDark =
        Theme.of(context).brightness == Brightness.dark;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: isDark
              ? const Color(0xFF2D0000)
              : const Color(0xFFFFE6E6),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isDark
                ? Colors.red.shade900
                : Colors.red.shade200,
          ),
        ),
        child: Row(
          children: [
            // Trash icon container
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: isDark
                    ? const Color(0xFF3A0F0F)
                    : Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Icon(
                  Icons.delete_outline,
                  color: Colors.red.shade600,
                  size: 24,
                ),
              ),
            ),

            const SizedBox(width: 16),

            // Label
            Expanded(
              child: Text(
                'Delete Account',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.red.shade700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
