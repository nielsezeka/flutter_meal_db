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
    final fcolors = Theme.of(context).primaryColor;
    final scolors = Theme.of(context).accentColor;
    return SafeArea(
      child: Scaffold(
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
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50)),
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
                                  onPressed: () {},
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
