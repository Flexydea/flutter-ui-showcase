import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final double oldPrice;
  final int discountPercent;
  final double rating; // 4.8
  final double reviews; // 4.8k
  final double sold; // 6.2k
  final String imagePath;
  final bool isFavorite;

  Product({
    required this.name,
    required this.price,
    required this.oldPrice,
    required this.discountPercent,
    required this.rating,
    required this.reviews,
    required this.sold,
    required this.imagePath,
    this.isFavorite = false,
  });
}
