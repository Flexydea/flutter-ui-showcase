import 'package:banking_app_ui/screens/home/widgets/payment_chip.dart';
import 'package:flutter/material.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final iconFolder = 'lib/assets/icons/dark';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Payments',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Transform.scale(
                scale: 0.6,
                child: Image.asset('$iconFolder/plus.png'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),

        //payments
        Row(
          children: [
            Expanded(
              child: PaymentChip(
                iconPath: '$iconFolder/flash.png',
                label: 'Electricity',
              ),
            ),
            Expanded(
              child: PaymentChip(
                iconPath: '$iconFolder/credit-card.png',
                label: 'Credit Card',
              ),
            ),
            Expanded(
              child: PaymentChip(
                iconPath: '$iconFolder/note.png',
                label: 'Tax',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
