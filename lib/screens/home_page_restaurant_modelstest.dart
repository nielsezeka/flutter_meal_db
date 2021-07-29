import 'package:flutter/material.dart';

class RestaurantAll {
  String name;
  int id;
  String imageURLFile;
  RestaurantAll(
      {required this.id, required this.imageURLFile, required this.name});
}

List<RestaurantAll> restaurantall = [
  RestaurantAll(id: 1, imageURLFile: 'assets/pizza.jpg', name: 'HighLand'),
  RestaurantAll(id: 2, imageURLFile: 'assets/food.jpg', name: 'Coffe House'),
  RestaurantAll(id: 3, imageURLFile: 'assets/logo.png', name: 'Ong Tho'),
];
