import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_responsive_ui/app_colors.dart';
import 'package:google_responsive_ui/widgets/mobile/mobile_footer.dart';
import 'package:google_responsive_ui/widgets/search.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        title: SizedBox(
          width: screenSize.width * 0.3,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
              labelColor: AppColors.blueColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: AppColors.blueColor,
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Images'),
              ],
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ),
        actions: [
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: screenSize.height * 0.25),
                  const Search(),
                ],
              ),
            ),
          ),
          //? web screen footar
          const MobileFooter(),
        ],
      ),
    );
  }
}
