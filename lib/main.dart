import 'package:flutter/material.dart';
import 'package:google_responsive_ui/responsive/mobile_screen_layout.dart';
import 'package:google_responsive_ui/responsive/responsive_layout_screen.dart';
import 'package:google_responsive_ui/responsive/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Responsive UI',
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const ResponsiveLayoutScreen(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
