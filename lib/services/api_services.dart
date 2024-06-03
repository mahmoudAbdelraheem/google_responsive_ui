import 'dart:convert';

import 'package:google_responsive_ui/config/api_json.dart';
import 'package:google_responsive_ui/config/api_keys.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  bool isDummyData = true;

  Future<Map<String, dynamic>> fetchData({
    required String quary,
    String start = '0',
  }) async {
    try {
      if (!isDummyData) {
        String q = quary.contains(' ') ? quary.split(' ').join('%20') : quary;
        String url =
            "https://www.googleapis.com/customsearch/v1?key$apiKeys&cx=$contextKey&q=$q&start=$start";
        final http.Response response = await http.get(Uri.parse(url));
        if (response.statusCode == 200) {
          final jsonData = response.body;
          final responseData = json.decode(jsonData);
          return responseData;
        }
      }
    } catch (e) {
      print("error from api services: $e");
    }
    return apiResponse;
  }
}
