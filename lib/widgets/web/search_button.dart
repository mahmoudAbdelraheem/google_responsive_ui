import 'package:flutter/material.dart';
import 'package:google_responsive_ui/app_colors.dart';

class SearchButton extends StatelessWidget {
  final String text;
  const SearchButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.searchColor,
        ),
        child: Text(text),
      ),
    );
  }
}
