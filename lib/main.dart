import 'package:flutter/material.dart';
import 'package:flutter_meal_db/constants/routing.dart';
import 'package:theme_provider/theme_provider.dart';
import 'router.dart' as router;

void main() => runApp(
      ThemeProvider(
        themes: [
          AppTheme(
            id: "custom_theme",
            description: "My Custom Theme",
            data: ThemeData(
              primaryColor: Colors.green,
              accentColor: Colors.black,
            ),
          ),
          AppTheme(
            id: "custom_theme2",
            description: "My Custom Theme",
            data: ThemeData(
              primaryColor: Colors.black,
              accentColor: Colors.blue,
            ),
          ),
        ],
        child: ThemeConsumer(
          child: Builder(
            builder: (themeContext) => MaterialApp(
              theme: ThemeProvider.themeOf(themeContext).data,
              debugShowCheckedModeBanner: false,
              title: 'Food App',
              onGenerateRoute: router.generateRoute,
              initialRoute: LoginPageRoute,
            ),
          ),
        ),
      ),
    );
