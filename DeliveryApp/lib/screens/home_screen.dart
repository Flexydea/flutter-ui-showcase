import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../models/category.dart';
import '../models/product.dart';
import '../models/restaurant.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/category_chips.dart';
import '../widgets/delivery_header.dart';
import '../widgets/filter_chips.dart';
import '../widgets/product_card.dart';
import '../widgets/restaurant_card.dart';
import '../widgets/search_field.dart';
import '../widgets/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int navIndex = 0;

  // Dummy data (replace later with real)
  final categories = <Category>[
    Category(id: 'burger', name: 'Burger', icon: '🍔'),
    Category(id: 'pizza', name: 'Pizza', icon: '🍕'),
    Category(id: 'sandwich', name: 'Sandwich', icon: '🌭'),
    Category(id: 'sandwich', name: 'Sandwich', icon: '🌭'),
  ];

  final products = <Product>[
    Product(
      id: '1',
      title: 'Chicken burger',
      subtitle: '200g chicken + cheese\nLettuce + tomato',
      price: 22.00,
      rating: 4.8,
    ),
    Product(
      id: '2',
      title: 'Cheese burger',
      subtitle:
          '200g meat + lettuce\nCheese + onion + tomato',
      price: 25.00,
      rating: 4.8,
    ),
  ];

  final restaurant = Restaurant(
    id: 'r1',
    name: 'Burger Hub',
    tags: 'Burger - Chicken - Pizza',
    rating: 4.7,
    badge: 'Free',
    time: '20 min',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(
        index: navIndex,
        onTap: (i) => setState(() => navIndex = i),
      ),
      // appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(
            16,
            16,
            16,
            24,
          ),
          children: [
            const SizedBox(height: 4),
            const DeliveryHeader(name: 'Godwin Igbokwe'),
            const SizedBox(height: 16),
            const SearchField(
              hint: 'Search dishes, restaurants',
            ),
            const SizedBox(height: 20),

            // Categories
            SectionHeader(
              title: 'All Categories',
              onSeeAll: () {},
            ),
            const SizedBox(height: 12),
            CategoryChips(
              items: categories,
              onChanged: (c) {
                // handle category change
              },
            ),
            const SizedBox(height: 16),

            // Product carousel
            SizedBox(
              height: 240,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (_, i) => ProductCard(
                  product: products[i],
                  onAdd: () {},
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Small page dots (simple)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (i) => Container(
                  width: i == 0 ? 18 : 6,
                  height: 6,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 4,
                  ),
                  decoration: BoxDecoration(
                    color: i == 0
                        ? AppTheme.primary
                        : const Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Restaurants section
            SectionHeader(
              title: 'Restaurants',
              onSeeAll: () {},
            ),
            const SizedBox(height: 12),
            const FilterChips(
              filters: [
                'All',
                'Open',
                'Nearby',
                'Top Rated',
                'Trending',
              ],
            ),
            const SizedBox(height: 12),
            RestaurantCard(item: restaurant),
            const SizedBox(height: 16),
            // Fake pager dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (i) => Container(
                  width: i == 0 ? 18 : 6,
                  height: 6,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 4,
                  ),
                  decoration: BoxDecoration(
                    color: i == 0
                        ? AppTheme.primary
                        : const Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
