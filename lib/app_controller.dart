import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController insance = AppController();
  bool isDartTheme = false;
  changeTheme() {
    isDartTheme = !isDartTheme;
    notifyListeners();
  }
}
