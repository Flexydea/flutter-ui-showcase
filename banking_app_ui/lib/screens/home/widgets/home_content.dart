import 'package:flutter/material.dart';
import 'package:banking_app_ui/screens/home/widgets/header_section.dart';
import 'package:banking_app_ui/screens/home/widgets/balance_card.dart';
import 'package:banking_app_ui/screens/home/widgets/pocket_section.dart';
import 'package:banking_app_ui/screens/home/widgets/payment_section.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top header
        const Padding(
          padding: EdgeInsets.all(18.0),
          child: HeaderSection(),
        ),
        const SizedBox(height: 10),

        // White rounded container with scrollable content
        Expanded(
          child: SingleChildScrollView(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Container(
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      BalanceCard(balance: 143465.80),
                      SizedBox(height: 24),
                      PocketSection(),
                      SizedBox(height: 24),
                      PaymentSection(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
