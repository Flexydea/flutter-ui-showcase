import 'package:banking_app_ui/models/pocket_card_model.dart';
import 'package:banking_app_ui/screens/home/widgets/pocket_card.dart';
import 'package:banking_app_ui/screens/investment/investment_screen.dart';
import 'package:flutter/material.dart';

class PocketSection extends StatelessWidget {
  final void Function(PocketCardModel pocket)? onPocketTap;

  const PocketSection({super.key, this.onPocketTap});

  @override
  Widget build(BuildContext context) {
    final iconFolder = 'lib/assets/icons/dark';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Pocket',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
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

        //Grid of cards
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: pocketCards.length,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 1.5,
              ),
          itemBuilder: (context, index) {
            final card = pocketCards[index];

            // Only make the first one ("Investment") clickable
            if (index == 0 && onPocketTap != null) {
              return GestureDetector(
                onTap: () => onPocketTap!(card),
                child: PocketCard(card: card),
              );
            }

            return PocketCard(card: card);

            // return PocketCard(card: pocketCards[index]);
            // return GestureDetector(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (_) =>
            //             InvestmentScreen(pocket: card),
            //       ),
            //     );
            //   },
            //   child: PocketCard(card: card),
            // );
          },
        ),
      ],
    );
  }
}
