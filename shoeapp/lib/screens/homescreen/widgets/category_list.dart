import 'package:flutter/material.dart';
import 'package:shoeapp/screens/homescreen/widgets/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          const SizedBox(width: 16),
          CategoryItem(
            assetPath: 'lib/assets/icons/shirt.png',
            label: 'Fashion',
          ),
          const SizedBox(width: 20),
          CategoryItem(
            assetPath: 'lib/assets/icons/computer.png',
            label: 'Electronics',
          ),
          const SizedBox(width: 20),
          CategoryItem(
            assetPath: 'lib/assets/icons/couch.png',
            label: 'Living',
          ),
          const SizedBox(width: 20),
          CategoryItem(
            assetPath: 'lib/assets/icons/paint-brush.png',
            label: 'Beauty',
          ),
          const SizedBox(width: 20),
          CategoryItem(
            assetPath: 'lib/assets/icons/cardiogram.png',
            label: 'Health',
          ),
          const SizedBox(width: 20),
          CategoryItem(
            assetPath: 'lib/assets/icons/sport-shoe.png',
            label: 'Shoes',
          ),
          const SizedBox(width: 20),
          CategoryItem(
            assetPath: 'lib/assets/icons/car.png',
            label: 'car',
          ),
        ],
      ),
    );
  }
}
