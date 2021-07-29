import 'package:flutter/material.dart';
import 'package:flutter_meal_db/screens/barinfoitem_page.dart';
import 'package:flutter_meal_db/screens/home_page_restaurant_modelstest.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  final List<RestaurantAll> aaaa = restaurantall;
  @override
  Widget build(BuildContext context) {
    final widthCustom = MediaQuery.of(context).size.width;
    final heightCustom = MediaQuery.of(context).size.height;
    final fcolors = Theme.of(context).primaryColor;
    final scolors = Theme.of(context).accentColor;
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          body: Container(
            height: heightCustom * 1,
            width: widthCustom * 1,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 274,
                      decoration: BoxDecoration(
                        color: fcolors,
                        image: DecorationImage(
                          image: AssetImage('assets/hightland.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: heightCustom * .28,
                  child: Container(
                    height: heightCustom * 1,
                    width: widthCustom * 1,
                    decoration: BoxDecoration(
                      color: fcolors,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50)),
                    ),
                    child: Stack(children: [
                      Positioned(
                        top: 30,
                        left: 10,
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: scolors,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Popula',
                                  style: TextStyle(color: fcolors),
                                ),
                              ),
                            ),
                            SizedBox(width: 190),
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
                        left: 10,
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
                                            color:
                                                Theme.of(context).accentColor,
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
                                height: 100,
                                width: 380,
                                color: Theme.of(context).primaryColor,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    color: fcolors,
                                    height: 20,
                                    width: 100,
                                    child: Text(
                                      'Popula Menu',
                                      style: TextStyle(
                                          color: scolors,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 205,
                                  ),
                                  Container(
                                      height: 30,
                                      color: fcolors,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'View All ',
                                          style: TextStyle(
                                              color: scolors,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ))
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                      top: 10,
                                      left: 10,
                                    ),
                                    color: fcolors,
                                    width: 390,
                                    height: 200,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: aaaa.length,
                                        itemBuilder: (listviewContext, index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              children: [
                                                Container(
                                                    height: 110,
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            aaaa[index]
                                                                .imageURLFile),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    )),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Ten Mon An',
                                                      style: TextStyle(
                                                          color: scolors,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                    Text(
                                                      '30\$',
                                                      style: TextStyle(
                                                          color: scolors,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 13),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
