import 'package:flutter/material.dart';
import 'package:flutter_meal_db/constants/routing.dart';
import 'package:flutter_meal_db/screens/home_page.dart';
import 'package:theme_provider/theme_provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('This is Login page'),
              TextButton(
                  onPressed: () {
                    ThemeProvider.controllerOf(context)
                        .setTheme('custom_theme');
                  },
                  child: Text('Use theme1')),
              TextButton(
                  onPressed: () {
                    ThemeProvider.controllerOf(context)
                        .setTheme('custom_theme2');
                  },
                  child: Text('Use theme2')),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Icon(Icons.play_arrow)),
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
            ],
          ),
        ),
      ),
    );
  }
}
