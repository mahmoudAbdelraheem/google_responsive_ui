import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_responsive_ui/app_colors.dart';
import 'package:google_responsive_ui/screens/search_result_screen.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 4),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset(
                'assets/images/google-logo.png',
                height: 30,
                width: 90,
              ),
            ),
          ),
          const SizedBox(width: 25),
          SizedBox(
            width: screenSize.width * 0.55,
            height: 44,
            child: TextFormField(
              onFieldSubmitted: (quary) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SearchResultScreen(
                      searchQuary: quary,
                      start: '0',
                    );
                  }),
                );
              },
              style: const TextStyle(fontSize: 16),
              decoration: InputDecoration(
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset('assets/images/mic-icon.svg'),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.search,
                      color: AppColors.blueColor,
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
                fillColor: AppColors.searchColor,
                filled: true,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(22),
                  ),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(22),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
