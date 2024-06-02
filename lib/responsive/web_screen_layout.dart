import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_responsive_ui/app_colors.dart';
import 'package:google_responsive_ui/widgets/search.dart';
import 'package:google_responsive_ui/widgets/translation_buttons.dart';
import 'package:google_responsive_ui/widgets/web/search_buttons.dart';
import 'package:google_responsive_ui/widgets/web/web_footer.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> textButtonList = ['Gmail', 'Images'];
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        actions: [
          ...List.generate(
            textButtonList.length,
            (index) => TextButton(
              onPressed: () {},
              child: Text(
                textButtonList[index],
                style: const TextStyle(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),

          //?
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
            ),
          ),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10).copyWith(
              right: 10,
            ),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xff1A73EB),
              child: const Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenSize.height * 0.25,
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    //? search text feild
                    Search(),
                    //? search buttons
                    SearchButtons(),
                    //? button for translation
                    TranslationButtons(),
                  ],
                ),
                //? web screen footar
                WebFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
