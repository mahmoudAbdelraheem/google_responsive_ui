import 'package:flutter/material.dart';
import 'package:google_responsive_ui/app_colors.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: AppColors.footerColor,
          padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.2, vertical: 15),
          child: Row(
            children: [
              Text(
                'Egypt',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 20,
                width: 0.5,
                color: Colors.grey,
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.circle,
                color: Color(0xff70757a),
                size: 12,
              ),
              const SizedBox(width: 10),
              const Text(
                '45121, Qena, Qena',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const Divider(thickness: 0, height: 9),
        Container(
          color: AppColors.footerColor,
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              Text(
                'Help',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                'Send Feedback',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                'Privacy',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                'Terms',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
