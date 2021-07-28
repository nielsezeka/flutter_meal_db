import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_meal_db/screens/home_page_restaurant_modelstest.dart';
import 'package:flutter_meal_db/screens/food_item_page.dart';
import 'package:theme_provider/theme_provider.dart';

import 'restaurant_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<RestaurantAll> restaurant = restaurantall;
  @override
  Widget build(BuildContext context) {
    final widthCustom = MediaQuery.of(context).size.width;
    final heightCustom = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              width: widthCustom * 1,
              height: heightCustom * 1,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/backrround2.jpg'),
                ),
              ),
              child: Column(children: [
                renderAppBar(),
                renderSearchBar(),
                renderButtonRestaurant(),
                renderListviewRestaurant(),
                renderPopulaButton(),
                renderPupulaListview(),
                renderBottonBarMenu(),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget renderSearchBar() {
    return Container(
      height: 100,
      child: Row(
        children: [
          Container(
            height: 60,
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Theme.of(context).accentColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintStyle: TextStyle(
                    color: Theme.of(context).accentColor,
                  ),
                  hintText: 'What Do You Want Oder ?'),
            ),
          ),
          Expanded(
            child: Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.control_point),
                color: Theme.of(context).accentColor,
                iconSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget renderAppBar() {
    return Container(
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find Your',
                style: TextStyle(
                    fontSize: 40,
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Favorite Food',
                style: TextStyle(
                    fontSize: 40,
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Theme.of(context).accentColor,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget renderButtonRestaurant() {
    return Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodItemPage(),
                  ),
                );
              },
              child: Text(
                'Restaurant',
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
        ));
  }

  Widget renderListviewRestaurant() {
    final fcolors = Theme.of(context).primaryColor;
    final scolors = Theme.of(context).accentColor;
    return Container(
      width: 400,
      height: 200,
      child: ListView.builder(
          itemCount: restaurant.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RestaurantPage(),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  NetworkImage(restaurant[index].imageURLFile),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    restaurant[index].name,
                    style: TextStyle(
                        color: scolors,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          }),
    );
  }

  Widget renderPopulaButton() {
    return Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Pupularmenu',
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
        ));
  }

  Widget renderPupulaListview() {
    return Container(
      height: 200,
      width: 400,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: restaurant.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(1),
              height: 70,
              width: 400,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(restaurant[index].imageURLFile),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ten Mon An',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          restaurant[index].name,
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '30 \$',
                          style: TextStyle(
                              color: Colors.green[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            );
          }),
    );
  }

  Widget renderBottonBarMenu() {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Theme.of(context).accentColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(20)),
            child: Row(children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Text(
                'Home',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.people,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.sell_rounded,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
