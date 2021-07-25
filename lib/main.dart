import 'package:flutter/material.dart';
import 'package:flutter_meal_db/constants/routing.dart';
import 'router.dart' as router;

import 'homepage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      onGenerateRoute: router.generateRoute,
      initialRoute: LoginPageRoute,
    ));
