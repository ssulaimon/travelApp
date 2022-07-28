import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:travel_app/api/categories_enums.dart';
//Get api result base on user category choice

class VacationApiDataGet {
  Future<Map?> resultBaseOnCategorySelected({
    required Categories categories,
  }) async {
    try {
      String apiUrl;

      switch (categories) {
        case Categories.amazingPool:
          apiUrl =
              'https://airbnb19.p.rapidapi.com/api/v1/searchProperty?category=TAB_677&totalRecords=10&currency=USD&adults=1';
          break;
        case Categories.amazingViews:
          apiUrl =
              'https://airbnb19.p.rapidapi.com/api/v1/searchProperty?category=TAB_8536&totalRecords=10&currency=USD&adults=1';
          break;
        case Categories.beach:
          apiUrl =
              'https://airbnb19.p.rapidapi.com/api/v1/searchProperty?category=TAB_7769&totalRecords=10&currency=USD&adults=1';
          break;
        case Categories.cabins:
          apiUrl =
              'https://airbnb19.p.rapidapi.com/api/v1/searchProperty?category=TAB_5348&totalRecords=10&currency=USD&adults=1';
          break;
        case Categories.camping:
          apiUrl =
              'https://airbnb19.p.rapidapi.com/api/v1/searchProperty?category=TAB_634&totalRecords=10&currency=USD&adults=1';
          break;
        case Categories.caves:
          apiUrl =
              'https://airbnb19.p.rapidapi.com/api/v1/searchProperty?category=TAB_670&totalRecords=10&currency=USD&adults=1';
          break;
        case Categories.islands:
          apiUrl =
              'https://airbnb19.p.rapidapi.com/api/v1/searchProperty?category=TAB_675&totalRecords=10&currency=USD&adults=1';
          break;
        case Categories.lake:
          apiUrl =
              'https://airbnb19.p.rapidapi.com/api/v1/searchProperty?category=TAB_8144&totalRecords=10&currency=USD&adults=1';
          break;
        case Categories.lakeFronts:
          apiUrl =
              'https://airbnb19.p.rapidapi.com/api/v1/searchProperty?category=TAB_8522&totalRecords=10&currency=USD&adults=1';
          break;
        case Categories.nationalParks:
          apiUrl =
              'https://airbnb19.p.rapidapi.com/api/v1/searchProperty?category=TAB_8102&totalRecords=10&currency=USD&adults=1';
          break;
        case Categories.omg:
          apiUrl =
              'https://airbnb19.p.rapidapi.com/api/v1/searchProperty?category=TAB_8225&totalRecords=10&currency=USD&adults=1';
          break;
        default:
          apiUrl =
              'https://airbnb19.p.rapidapi.com/api/v1/searchProperty?category=TAB_8186&totalRecords=10&currency=USD&adults=1';
          break;
      }
      var parseUrl = Uri.parse(apiUrl);
      Map<String, String> header = {
        'X-RapidAPI-Key': '7bc9f390d3msh22d9698290555c5p1d962ejsn7e39abbb49ad',
        'X-RapidAPI-Host': 'airbnb19.p.rapidapi.com'
      };
      Response response = await get(parseUrl, headers: header);
      Map body = await jsonDecode(response.body);
      return body;
    } catch (e) {
      return null;
    }
  }
}
