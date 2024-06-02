import 'package:flutter/material.dart';

class FotterText extends StatelessWidget {
  final String title;
  const FotterText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xff70757a),
          ),
        ),
      ),
    );
  }
}
