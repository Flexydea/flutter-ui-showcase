import 'package:flutter/material.dart';
import 'package:shoeapp/models/product.dart';
import 'package:shoeapp/screens/homescreen/widgets/product_card.dart';

class FeaturedProductsSection extends StatelessWidget {
  const FeaturedProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(
        name: 'Niki Sneakers',
        price: 200,
        oldPrice: 260,
        discountPercent: 20,
        rating: 4.8,
        reviews: 4.8, // for display only
        sold: 6.2,
        imagePath: 'lib/assets/shoe.png',
      ),
      Product(
        name: 'White Sneakers',
        price: 120,
        oldPrice: 160,
        discountPercent: 10,
        rating: 2.3,
        reviews: 2.3,
        sold: 5,
        imagePath: 'lib/assets/shoe1.png',
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Featured Products',
              style: Theme.of(context).textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 280,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            separatorBuilder: (_, __) =>
                const SizedBox(width: 12),
            itemBuilder: (context, index) {
              return ProductCard(product: products[index]);
            },
          ),
        ),
      ],
    );
  }
}
