import 'package:flutter/material.dart';
import 'package:shoeapp/app_theme.dart';
import 'package:shoeapp/models/promo_card_model.dart';

final promo1 = PromoCardModel(
  title: 'Niki White Super Sneakers',
  bodyText: 'comfort meets style for your every day wear',
  buttonText: 'Get 30% discount',
  color: AppTheme.cardingColor,
  image: Image.asset('lib/assets/shoe.png'),
);

final promo2 = PromoCardModel(
  title: 'Running Pro Max Shoes',
  bodyText: 'lightweight & durable',
  buttonText: 'Buy now',
  color: Colors.lightBlueAccent,
  image: Image.asset('lib/assets/shoe1.png'),
);
