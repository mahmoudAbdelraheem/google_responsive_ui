import 'package:flutter/material.dart';
import 'package:google_responsive_ui/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultComponent extends StatefulWidget {
  final String link;
  final String text;
  final String description;
  final String linkToGo;
  const SearchResultComponent({
    super.key,
    required this.link,
    required this.text,
    required this.linkToGo,
    required this.description,
  });

  @override
  State<SearchResultComponent> createState() => _SearchResultComponentState();
}

class _SearchResultComponentState extends State<SearchResultComponent> {
  @override
  Widget build(BuildContext context) {
    bool showUnderLine = false;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.link),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onHover: (hovring) {
              setState(() {
                showUnderLine = hovring;
              });
            },
            onTap: () async {
              if (await canLaunchUrl(Uri.parse(widget.linkToGo))) {
                await launchUrl(Uri.parse(widget.linkToGo));
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.link,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xff202124),
                  ),
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                    color: AppColors.blueColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    decoration: showUnderLine == true
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ),
        //! display descripion search
        Text(
          widget.description,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.primaryColor,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
