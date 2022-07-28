import 'package:flutter/material.dart';
import 'package:travel_app/api/categories_enums.dart';
import 'package:travel_app/resources/colors.dart';

List<DropdownMenuItem<Categories>> dropdownItems = const [
  DropdownMenuItem(
    value: Categories.amazingPool,
    child: Text(
      'Amazing Pools',
    ),
  ),
  DropdownMenuItem(
    value: Categories.amazingViews,
    child: Text(
      'Amazing views',
    ),
  ),
  DropdownMenuItem(
    value: Categories.cabins,
    child: Text('Cabins'),
  ),
  DropdownMenuItem(
    value: Categories.camping,
    child: Text('Camping'),
  ),
  DropdownMenuItem(
    value: Categories.caves,
    child: Text('Caves'),
  ),
  DropdownMenuItem(
    value: Categories.islands,
    child: Text('Islands'),
  ),
  DropdownMenuItem(
    value: Categories.lake,
    child: Text('Lakes'),
  ),
  DropdownMenuItem(
    value: Categories.lakeFronts,
    child: Text('Lake Fronts'),
  ),
  DropdownMenuItem(
    value: Categories.nationalParks,
    child: Text('National Parks'),
  ),
  DropdownMenuItem(
    value: Categories.omg,
    child: Text('OMG!!!'),
  ),
  DropdownMenuItem(
    value: Categories.tinyHomes,
    child: Text('Tiny Homes'),
  ),
  DropdownMenuItem(
    value: Categories.beach,
    child: Text('Beach'),
  ),
];
