import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class SearchField extends StatelessWidget {
  final String hint;
  const SearchField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
            height: 20,
            width: 20,
            child: Image.asset(
              'lib/assets/icons/search.png',
            ),
          ),
        ),

        suffixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
            height: 20,
            width: 20,
            child: Image.asset(
              color: Colors.grey.shade400,
              'lib/assets/icons/filter.png',
            ),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 0.1,
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 3,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
