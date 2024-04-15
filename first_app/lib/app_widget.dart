import 'package:first_app/home_page.dart';
import 'package:first_app/login_page.dart';
import 'package:flutter/material.dart';
import 'app_controller.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.blue,
                brightness: AppController.instance.isDartTheme
                    ? Brightness.dark
                    : Brightness.light
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
            },
        );
      },
    );
  }
}
