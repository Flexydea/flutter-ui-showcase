import 'package:flutter/material.dart';
import '../app_theme.dart';

class FilterChips extends StatefulWidget {
  final List<String> filters;
  const FilterChips({super.key, required this.filters});

  @override
  State<FilterChips> createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChips> {
  String active = 'All';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Wrap(
        spacing: 4,
        children: widget.filters.map((f) {
          final sel = active == f;
          return ChoiceChip(
            label: Text(f),
            selected: sel,
            onSelected: (_) => setState(() => active = f),
            selectedColor: AppTheme.primary,
            labelStyle: TextStyle(
              color: sel ? Colors.white : AppTheme.textDark,
              fontWeight: FontWeight.w600,
            ),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                color: sel
                    ? AppTheme.primary
                    : const Color(0xFFECECEC),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
