import 'package:banking_app_ui/models/pocket_card_model.dart';
import 'package:banking_app_ui/screens/investment/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class InvestmentScreen extends StatelessWidget {
  final PocketCardModel pocket;
  const InvestmentScreen({super.key, required this.pocket});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(18),
          child: TopBar(title: 'Investment'),
        ),
        const SizedBox(height: 10),

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
                  child: Column(children: []),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
