import 'package:eshop/app_theme.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final String hint;
  const SearchField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppTheme.primaryLight,
        hintText: hint,
        hintStyle: const TextStyle(
          color: AppTheme.textLight,
          fontSize: 14,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: AppTheme.primary,
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
