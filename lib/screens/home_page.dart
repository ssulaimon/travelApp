import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:travel_app/api/categories_enums.dart';
import 'package:travel_app/api/rapidapi_point.dart';
import 'package:travel_app/resources/colors.dart';
import 'package:travel_app/resources/dropdownMenuItems.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Categories categories = Categories.amazingPool;
  Map? map;
  Future<Map?> getCategory() async {
    map = await VacationApiDataGet()
        .resultBaseOnCategorySelected(categories: categories);
    return map;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: red,
          title: const Text(
            'Sort vacation dream',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          actions: [
            DropdownButton(
              elevation: 0,
              style: const TextStyle(color: white),
              dropdownColor: red,
              items: dropdownItems,
              onChanged: (value) {
                setState(() {
                  categories = value as Categories;
                });
              },
              value: categories,
            )
          ],
        ),
        body: FutureBuilder(
          builder: (context, snapShot) {
            switch (snapShot.connectionState) {
              case ConnectionState.done:
                return FlatButton(
                    onPressed: () {
                      log(map.toString());
                    },
                    child: const Text('Map'));
                break;
              case ConnectionState.waiting:
                return const Center(
                  child: SpinKitCircle(color: red),
                );
              default:
                return Text('Erorr');
            }
          },
          future: getCategory(),
        ));
  }
}
