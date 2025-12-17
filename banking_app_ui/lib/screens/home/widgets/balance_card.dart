import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // <-- IMPORTANT

class BalanceCard extends StatelessWidget {
  final double balance;
  const BalanceCard({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    final iconFolder = 'lib/assets/icons/dark';

    // Format number with commas
    final formattedBalance = NumberFormat(
      "#,##0.00",
    ).format(balance);

    return Container(
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 18,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Small title
            Text(
              'Total balance',
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'PlusJakartaSans',
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
            ),

            // BALANCE ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$',
                  style: TextStyle(
                    fontFamily: 'PlusJakartaSans',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500,
                  ),
                ),
                const SizedBox(width: 4),

                // FORMATTED BALANCE
                Text(
                  formattedBalance,
                  style: const TextStyle(
                    fontFamily: 'PlusJakartaSans',
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: -0.5,
                  ),
                ),

                const SizedBox(width: 8),

                // EYE ICON
                Transform.scale(
                  scale: 0.6,
                  child: Image.asset(
                    '$iconFolder/eyebrow.png',
                    height: 40,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // ACTION BUTTONS
            Row(
              children: [
                Expanded(
                  child: _ActionButton(
                    iconPath: '$iconFolder/plus.png',
                    label: 'Add Money',
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: _ActionButton(
                    iconPath: '$iconFolder/send.png',
                    label: 'Transfer',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            const Divider(thickness: 0.09),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String iconPath;
  final String label;

  const _ActionButton({
    super.key,
    required this.iconPath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ICON BOX
        Container(
          height: 48,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Image.asset(
              iconPath,
              height: 20,
              width: 20,
              color: Colors.black87,
            ),
          ),
        ),
        const SizedBox(height: 6),

        // LABEL
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
