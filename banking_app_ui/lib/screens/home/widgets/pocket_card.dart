import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:banking_app_ui/models/pocket_card_model.dart';

class PocketCard extends StatelessWidget {
  final PocketCardModel card;

  const PocketCard({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    final formattedAmount = NumberFormat(
      '#,##0.00',
    ).format(card.amount);
    final iconFolder = 'lib/assets/icons/dark';
    return Container(
      constraints: const BoxConstraints(minHeight: 120),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white.withOpacity(0.1),
          width: 5,
        ),
        borderRadius: BorderRadius.circular(18),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: card.gradientColors,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Stack(
          children: [
            Positioned.fill(
              child: CustomPaint(
                painter: _PocketWavePainter(),
              ),
            ),

            // content
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadiusGeometry.circular(30),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 6,
                          sigmaY: 6,
                        ),
                      ),
                    ),
                  ),
                  // card number pill
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 0.1,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.18),
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                      border: Border.all(
                        color: Colors.white.withOpacity(
                          0.35,
                        ),
                        width: 0.8,
                      ),
                    ),
                    child: Text(
                      card.cardNumber,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey,
                        letterSpacing: 0.4,
                      ),
                    ),
                  ),

                  const Spacer(),
                  // title
                  Text(
                    card.title,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 2),

                  // amount
                  Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 28,
                        child: Text(
                          '\$',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 2),
                      Text(
                        formattedAmount,
                        // card.amount.toStringAsFixed(2),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: -0.2,
                        ),
                      ),
                      const SizedBox(width: 4),

                      SizedBox(
                        width: 12,
                        height: 25,
                        child: Image.asset(
                          '$iconFolder/eyebrow.png',
                          fit: BoxFit.contain,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PocketWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();

    // start a little below the top
    path.moveTo(0, size.height * 0.30);

    // left curve going down into the center dent
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.30,
      size.width * 0.40,
      size.height * 0.30,
    );

    // center dent
    path.quadraticBezierTo(
      size.width * 0.50,
      size.height * 0.50,
      size.width * 0.60,
      size.height * 0.32,
    );

    // right curve back up
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.30,
      size.width,
      size.height * 0.30,
    );

    // close shape to the top
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>
      false;
}
