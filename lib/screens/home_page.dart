import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/api/categories_enums.dart';
import 'package:travel_app/resources/dropdownMenuItems.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Categories categories = Categories.amazingPool;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        DropdownButton(
          items: dropdownItems,
          onChanged: (value) {
            setState(() {
              categories = value as Categories;
            });
          },
          value: categories,
        )
      ]),
    );
  }
}
