import 'package:flutter/material.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    final widthCustom = MediaQuery.of(context).size.width;
    final heightCustom = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: heightCustom * 1,
            width: widthCustom * 1,
            child: Stack(
              children: [
                Container(
                  height: 274,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    image: DecorationImage(
                      image: AssetImage("assets/hightland"),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
