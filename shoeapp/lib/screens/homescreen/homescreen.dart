import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:shoeapp/app_theme.dart';
import 'package:shoeapp/models/promo_card_data.dart';
import 'package:shoeapp/screens/homescreen/widgets/bottom_nav.dart';
import 'package:shoeapp/screens/homescreen/widgets/card.dart';
import 'package:shoeapp/screens/homescreen/widgets/category_list.dart';
import 'package:shoeapp/screens/homescreen/widgets/featured_products_section.dart';
import 'package:shoeapp/screens/homescreen/widgets/header.dart';
import 'package:shoeapp/screens/homescreen/widgets/search_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;

  final _controller = PageController(
    viewportFraction: 0.88,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // switch body by index (for now only index 0 is your real UI)
      body: SafeArea(
        child: _buildBodyForIndex(_selectedIndex),
      ),

      // 👇 your custom bottom nav with PNG icons
      bottomNavigationBar: BottomNav(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildBodyForIndex(int index) {
    switch (index) {
      case 0:
        return _buildHomeContent();
      case 1:
        return const Center(
          child: Text('Orders screen (to build)'),
        );
      case 2:
        return const Center(
          child: Text('Discount / Deals screen (to build)'),
        );
      case 3:
        return const Center(
          child: Text('Notifications screen (to build)'),
        );
      case 4:
        return const Center(
          child: Text('Profile screen (to build)'),
        );
      default:
        return _buildHomeContent();
    }
  }

  Widget _buildHomeContent() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      child: ListView(
        children: [
          const Header(name: 'Godwin Igbokwe'),
          const SizedBox(height: 20),
          const SearchField(hint: 'Search product....'),
          const SizedBox(height: 20),

          // promo cards
          SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: PageView(
                padEnds: false,
                clipBehavior: Clip.none,
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  PromoCard(promoCard: promo1),
                  PromoCard(promoCard: promo2),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // categories row
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: const CategoryList(),
          ),

          // featured products
          const SizedBox(height: 24),
          const FeaturedProductsSection(),
        ],
      ),
    );
  }
}
