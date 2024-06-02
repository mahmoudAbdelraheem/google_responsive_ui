import 'package:flutter/material.dart';
import 'package:google_responsive_ui/app_colors.dart';
import 'package:google_responsive_ui/widgets/fotter_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> webFotterText = [
      'About',
      'Advertising',
      'Bussiness',
      'How Search Work'
    ];
    return Container(
      color: AppColors.footerColor,
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ...List.generate(
                webFotterText.length,
                (index) => FotterText(
                  title: webFotterText[index],
                ),
              ),
            ],
          ),
          const Row(
            children: [
              FotterText(title: 'Privacy'),
              FotterText(title: 'Terms'),
              FotterText(title: 'Setting'),
            ],
          ),
        ],
      ),
    );
  }
}
