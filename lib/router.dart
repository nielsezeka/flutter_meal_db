import 'package:flutter/material.dart';
import 'package:flutter_meal_db/constants/routing.dart';
import 'package:flutter_meal_db/screens/home_page/home_page.dart';
import 'package:flutter_meal_db/screens/login_page.dart';
import 'package:flutter_meal_db/screens/undefined_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePageRoute:
      return MaterialPageRoute(builder: (builder) => HomePage());
    case LoginPageRoute:
      return MaterialPageRoute(builder: (builder) => LoginPage());
    default:
      return MaterialPageRoute(builder: (builder) => UndefinedPage());
  }
}
