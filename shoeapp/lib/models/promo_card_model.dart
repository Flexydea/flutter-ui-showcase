import 'package:flutter/material.dart';

class PromoCardModel {
  final String title;
  final String bodyText;
  final String buttonText;
  final Color color;
  final Image image;

  PromoCardModel({
    required this.title,
    required this.bodyText,
    required this.buttonText,
    required this.color,
    required this.image,
  });
}
