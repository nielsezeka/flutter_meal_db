import 'package:flutter/material.dart';
import 'package:flutter_meal_db/screens/thankyou_page.dart';

class FoodItemPage extends StatefulWidget {
  const FoodItemPage({Key? key}) : super(key: key);

  @override
  _FoodItemPageState createState() => _FoodItemPageState();
}

class _FoodItemPageState extends State<FoodItemPage> {
  @override
  Widget build(BuildContext context) {
    final widthCustom = MediaQuery.of(context).size.width;
    final heightCustom = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: heightCustom * 1,
          width: widthCustom * 1,
          color: Theme.of(context).primaryColor,
          child: Stack(
            children: [
              renderImage(),
              renderTitleMenu(),
            ],
          ),
        ),
      ),
    );
  }

  Widget renderImage() {
    return Container(
      height: 306,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        image: DecorationImage(
          image: AssetImage('assets/pizza.jpg'),
        ),
      ),
    );
  }

  Widget renderTitleMenu() {
    return Positioned(
      top: 260,
      child: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Stack(children: [
          Positioned(
            top: 30,
            left: 30,
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Popula',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ),
                SizedBox(width: 150),
                Container(
                  child: IconButton(
                    icon: Icon(
                      Icons.location_history,
                      color: Theme.of(context).accentColor,
                      size: 25,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Theme.of(context).accentColor,
                      size: 25,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 30,
            top: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Pizza Cứt Ngựa \n Ăn Thì Ăn Không Ăn Thì Ăn',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Theme.of(context).accentColor,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Container(
                        child: Text(
                          '4.8 Ratting',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 15),
                        ),
                      ),
                      SizedBox(width: 30),
                      Icon(
                        Icons.stroller,
                        color: Theme.of(context).accentColor,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Container(
                        child: Text(
                          '2000+ Oder',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    children: [
                      Text(
                        'Đẹp Không thầy ô yê evo ry bô đy hearrrrrrrrrrrr ấu yế',
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 355,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThankYouPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Add To Chart',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
