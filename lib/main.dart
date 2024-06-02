import 'package:flutter/material.dart';
import 'package:google_responsive_ui/app_colors.dart';
import 'package:google_responsive_ui/responsive/mobile_screen_layout.dart';
import 'package:google_responsive_ui/responsive/responsive_layout_screen.dart';
import 'package:google_responsive_ui/responsive/web_screen_layout.dart';
import 'package:google_responsive_ui/screens/search_result_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Responsive UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: false).copyWith(
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
      // home: const ResponsiveLayoutScreen(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: const SearchResultScreen(),
    );
  }
}
