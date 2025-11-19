import 'package:eshop/models/category.dart';
import 'package:flutter/material.dart';
import '../app_theme.dart';

class CategoryChips extends StatefulWidget {
  final List<Category> items;
  final ValueChanged<Category> onChanged;

  const CategoryChips({
    super.key,
    required this.items,
    required this.onChanged,
  });

  @override
  State<CategoryChips> createState() =>
      _CategoryChipsState();
}

class _CategoryChipsState extends State<CategoryChips> {
  String selectedId = 'all';
  @override
  Widget build(BuildContext context) {
    final all = Category(id: 'all', name: 'All', icon: '');
    final list = [all, ...widget.items];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: list.map((c) {
          final isSelected = selectedId == c.id;
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ChoiceChip(
              label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(c.icon),
                  const SizedBox(width: 4),
                  Text(c.name),
                ],
              ),
              selectedColor: AppTheme.primary,
              labelStyle: TextStyle(
                color: isSelected
                    ? Colors.white
                    : AppTheme.textDark,
                fontWeight: FontWeight.w600,
              ),
              selected: isSelected,
              onSelected: (_) {
                setState(() => selectedId = c.id);
                widget.onChanged(c);
              },
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: isSelected
                      ? AppTheme.primary
                      : const Color(0xFFECECEC),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
