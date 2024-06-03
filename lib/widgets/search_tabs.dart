import 'package:flutter/material.dart';

import 'package:google_responsive_ui/app_colors.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 55,
      child: Row(
        children: [
          SearchTab(
            iconData: Icons.search,
            text: 'all',
            isActive: true,
          ),
          SearchTab(
            iconData: Icons.image,
            text: 'Images',
          ),
          SearchTab(
            iconData: Icons.map_rounded,
            text: 'Maps',
          ),
          SearchTab(
            iconData: Icons.article_rounded,
            text: 'News',
          ),
          SearchTab(
            iconData: Icons.more_vert,
            text: 'more',
          ),
        ],
      ),
    );
  }
}

class SearchTab extends StatelessWidget {
  final IconData iconData;
  final String text;
  final bool isActive;
  const SearchTab({
    super.key,
    required this.iconData,
    this.isActive = false,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  size: 18,
                  color: isActive ? AppColors.blueColor : Colors.grey,
                ),
                const SizedBox(width: 3),
                Text(
                  text,
                  style: TextStyle(
                    color: isActive ? AppColors.blueColor : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 7),
          if (isActive)
            Container(
              color: AppColors.blueColor,
              width: 40,
              height: 3,
            )
        ],
      ),
    );
  }
}
