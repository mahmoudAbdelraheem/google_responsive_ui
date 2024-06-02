import 'package:flutter/material.dart';
import 'package:google_responsive_ui/app_colors.dart';

class TranslationButtons extends StatelessWidget {
  const TranslationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      alignment: WrapAlignment.center,
      children: [
        Text('Google Offered in: '),
        LanguageText(language: 'Arabic'),
        LanguageText(language: 'English'),
        LanguageText(language: 'French'),
        LanguageText(language: 'germany'),
      ],
    );
  }
}

class LanguageText extends StatelessWidget {
  final String language;
  const LanguageText({super.key, required this.language});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: InkWell(
        onTap: () {},
        child: Text(
          language,
          style: const TextStyle(
            color: AppColors.blueColor,
          ),
        ),
      ),
    );
  }
}
