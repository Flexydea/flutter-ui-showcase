import 'package:flutter/material.dart';

class PocketCardModel {
  final String cardNumber;
  final String title;
  final double amount;
  final List<Color> gradientColors;

  const PocketCardModel({
    required this.cardNumber,
    required this.title,
    required this.amount,
    required this.gradientColors,
  });
}

const pocketCards = <PocketCardModel>[
  PocketCardModel(
    cardNumber: '8287-2847-01',
    title: 'Investment',
    amount: 13942.02,
    gradientColors: [
      Color(0xFFB95CFF),
      Color.fromARGB(255, 113, 100, 232),
    ],
  ),
  PocketCardModel(
    cardNumber: '2711-2702-02',
    title: 'Travel Savings',
    amount: 1742.02,
    gradientColors: [
      Color(0xFF355DFF),
      Color.fromARGB(255, 5, 13, 86),
    ],
  ),
  PocketCardModel(
    cardNumber: '0505-2727-03',
    title: 'Bills & Subscriptions',
    amount: 483.28,
    gradientColors: [
      Color(0xFF32C85A),
      Color.fromARGB(255, 15, 108, 79),
    ],
  ),
  PocketCardModel(
    cardNumber: '0803-1606-04',
    title: 'Emergency Funds',
    amount: 2937.99,
    gradientColors: [
      Color(0xFFFF4D79),
      Color.fromARGB(255, 198, 66, 110),
    ],
  ),
];
