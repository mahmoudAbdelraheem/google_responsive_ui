import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_responsive_ui/app_colors.dart';
import 'package:google_responsive_ui/screens/search_result_screen.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/google-logo.png',
              height: screenSize.height * 0.14,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: screenSize.width > 768
                ? screenSize.width * 0.5
                : screenSize.width * 0.8,
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
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.searchBorder,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset('assets/images/search-icon.svg'),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset('assets/images/mic-icon.svg'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
