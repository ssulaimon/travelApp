import 'dart:developer';

import 'package:http/http.dart';
//Get api result base on user

class VacationApiDataGet {
  Future<Map?> randomVacationCenters() async {
    const String apiUrl =
        'https://airbnb19.p.rapidapi.com/api/v1/searchProperty?category=TAB_675&totalRecords=10&currency=USD&adults=1';

    var parseUrl = Uri.parse(apiUrl);
    Map<String, String> header = {
      'X-RapidAPI-Key': '7bc9f390d3msh22d9698290555c5p1d962ejsn7e39abbb49ad',
      'X-RapidAPI-Host': 'airbnb19.p.rapidapi.com'
    };
    Response response = await get(parseUrl, headers: header);
    log(response.body);
  }
}
