import 'package:flutter/material.dart';
import 'package:google_responsive_ui/widgets/web/search_button.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchButton(text: 'Google Search'),
          SearchButton(text: 'i\'m feeling lucky'),
        ],
      ),
    );
  }
}
