import 'package:flutter/material.dart';
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
            ],
          ),
        ),
      ),
    );
  }
}
