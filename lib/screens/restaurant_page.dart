import 'package:flutter/material.dart';

class RestaurantItem extends StatefulWidget {
  const RestaurantItem({Key? key}) : super(key: key);

  @override
  _RestaurantItemState createState() => _RestaurantItemState();
}

class _RestaurantItemState extends State<RestaurantItem> {
  @override
  Widget build(BuildContext context) {
    final widthCustom = MediaQuery.of(context).size.width;
    final heightCustom = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: Stack(
          children: [
            RenderImage(),
            RenderTitleMenu(),
          ],
        ),
      ),
    );
  }

  Widget RenderImage() {
    return Container(
      height: 306,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        image: DecorationImage(
          image: AssetImage('assets/pizza.jpg'),
        ),
      ),
    );
  }

  Widget RenderTitleMenu() {
    return Positioned(
      top: 260,
      child: Container(
        height: 420,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
      ),
    );
  }
}
