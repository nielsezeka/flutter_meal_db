import 'package:flutter/material.dart';

class RestaurantAll {
  String name;
  String id;
  String image;
  RestaurantAll({required this.id, required this.image, required this.name});
}

List<RestaurantAll> restaurantall = [
  RestaurantAll(
      id: '1',
      image:
          'https://vi.wikipedia.org/wiki/Highlands_Coffee#/media/T%E1%BA%ADp_tin:Highlands_Coffee_logo.svg',
      name: 'HighLand'),
  RestaurantAll(
      id: '2',
      image:
          'https://image.bnews.vn/MediaUpload/Org/2021/01/23/the-coffee-house2.jpg',
      name: 'Coffe House'),
  RestaurantAll(
      id: '3',
      image:
          'https://scontent-hkg4-1.xx.fbcdn.net/v/t1.6435-9/152185385_1038323686661551_2382124661436488722_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=e3f864&_nc_ohc=ooWKGAtxvToAX-6nBk7&_nc_ht=scontent-hkg4-1.xx&oh=660cbf9ea440429b7f81d2e1a475837b&oe=61223C44',
      name: 'Ong Tho'),
];
