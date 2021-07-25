import 'package:flutter/material.dart';

class RestaurantAll {
  String name;
  String id;
  String imageURLFile;
  RestaurantAll(
      {required this.id, required this.imageURLFile, required this.name});
}

List<RestaurantAll> restaurantall = [
  RestaurantAll(
      id: '1',
      imageURLFile:
          'https://digifood.vn/wp-content/uploads/2021/05/Highland-Nguyen-thai-hoc.jpg',
      name: 'HighLand'),
  RestaurantAll(
      id: '2',
      imageURLFile:
          'https://image.bnews.vn/MediaUpload/Org/2021/01/23/the-coffee-house2.jpg',
      name: 'Coffe House'),
  RestaurantAll(
      id: '3',
      imageURLFile:
          'https://cdn.tgdd.vn/Products/Images/2526/77423/bhx/sua-dac-co-duong-ong-tho-trang-nhan-xanh-lon-380g-201911071524564853.jpg',
      name: 'Ong Tho'),
];
