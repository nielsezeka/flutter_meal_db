import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme_provider/theme_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              padding: EdgeInsets.all(20),
              color: Theme.of(context).primaryColor,
              child: Column(children: [
                Container(
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
                      SizedBox(
                        width: 70,
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(
                            Icons.notifications,
                            color: Theme.of(context).accentColor,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Theme.of(context).primaryColor,
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                        color: Theme.of(context).primaryColor,
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
                ),
                Container(
                    height: 50,
                    color: Theme.of(context).primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Restaurant',
                            style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    )),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
