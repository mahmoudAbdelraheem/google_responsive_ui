import 'package:flutter/material.dart';
import 'package:google_responsive_ui/widgets/fotter_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> mobileFotterText = [
      'About',
      'Advertising',
      'Bussiness',
      'How Search Work',
      'Privacy',
      'Terms',
      'Setting',
    ];
    return Wrap(
      children: [
        ...List.generate(
          mobileFotterText.length,
          (index) => FotterText(
            title: mobileFotterText[index],
          ),
        ),
      ],
    );
  }
}
