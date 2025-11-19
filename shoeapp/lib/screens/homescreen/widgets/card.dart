import 'package:flutter/material.dart';
import 'package:shoeapp/models/promo_card_model.dart';

class PromoCard extends StatelessWidget {
  final PromoCardModel promoCard;
  const PromoCard({super.key, required this.promoCard});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(2),
      child: Container(
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: promoCard.color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        promoCard.title,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          height: 1.1,
                          letterSpacing: -0.3,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        promoCard.bodyText,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Colors.black45,
                        ),
                      ),

                      SizedBox(height: 30),

                      // SizedBox(height: 50),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12),
                          ),
                          padding:
                              const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 5,
                              ),
                        ),
                        onPressed: () {},
                        child: Text(
                          promoCard.buttonText,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // const SizedBox(width: 5),
                SizedBox(
                  height: 100,
                  width: 130,
                  child: promoCard.image,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
