import 'package:flutter/material.dart';
import 'package:google_responsive_ui/app_colors.dart';
import 'package:google_responsive_ui/services/api_services.dart';
import 'package:google_responsive_ui/widgets/search_footer.dart';
import 'package:google_responsive_ui/widgets/search_header.dart';
import 'package:google_responsive_ui/widgets/search_result_component.dart';
import 'package:google_responsive_ui/widgets/search_tabs.dart';

class SearchResultScreen extends StatelessWidget {
  final String searchQuary;
  final String start;
  const SearchResultScreen({
    super.key,
    required this.searchQuary,
    required this.start,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //? web header
            const SearchHeader(),
            //? tab for news , images ,etc
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width >= 768 ? 150 : 10,
              ),
              child: const SearchTabs(),
            ),
            const Divider(
              thickness: 1,
              color: AppColors.searchBorder,
            ),
            //! search results fetch data
            FutureBuilder(
                future:
                    ApiServices().fetchData(quary: searchQuary, start: start),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left:  MediaQuery.of(context).size.width >= 768 ? 150 : 10,
                            top: 12,
                          ),
                          child: Text(
                            "About (${snapshot.data?['searchInformation']['totalResults']}) Results (${snapshot.data?['searchInformation']['formattedSearchTime']}) seconds",
                            style: const TextStyle(
                              fontSize: 15,
                              color: Color(0xff70757a),
                            ),
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: snapshot.data?['items'].length,
                          itemBuilder: (_, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                left:  MediaQuery.of(context).size.width >= 768
                                    ? 150
                                    : 10,
                                top: 10,
                              ),
                              child: SearchResultComponent(
                                description: snapshot.data?['items'][index]
                                    ['snippet'],
                                link: snapshot.data?['items'][index]
                                    ['formattedUrl'],
                                linkToGo: snapshot.data?['items'][index]
                                    ['link'],
                                text: snapshot.data?['items'][index]['title'],
                              ),
                            );
                          },
                        ),
                        //? pagination buttons
                        //! prev and next buttons
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  if (start != '0') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) {
                                        return SearchResultScreen(
                                          searchQuary: searchQuary,
                                          start: (int.parse(start) - 10)
                                              .toString(),
                                        );
                                      }),
                                    );
                                  }
                                },
                                child: const Text(
                                  '< Prev',
                                  style: TextStyle(
                                    color: AppColors.blueColor,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return SearchResultScreen(
                                        searchQuary: searchQuary,
                                        start:
                                            (int.parse(start) + 10).toString(),
                                      );
                                    }),
                                  );
                                },
                                child: const Text(
                                  'Next >',
                                  style: TextStyle(
                                    color: AppColors.blueColor,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //! footer
                        const SearchFooter(),
                      ],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
