import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class ApiData {
  fetchAllUni() async {
    var url =
        Uri.parse("http://universities.hipolabs.com/search?country=pakistan");
    var response = await http.get(url);
    List<dynamic> universities = [];
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      for (int i = 0; i < jsonResponse.length; i++) {
        universities.add(jsonResponse[i]);
      }
      return universities;
      // return jsonResponse;
    }
  }
}
