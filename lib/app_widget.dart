// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterando/app_controller.dart';
import 'package:flutterando/home_page.dart';
import 'package:flutterando/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.insance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: AppController.insance.isDartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          routes: {
            '/': (context) => loginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
