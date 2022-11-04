
import 'package:flutter/material.dart';

class MyTheme with ChangeNotifier {
  static bool _darkTheme =true;

  ThemeMode currentTheme(){
    return _darkTheme ? ThemeMode.dark:ThemeMode.light;
  }
  void switchTheme() {
    _darkTheme =!_darkTheme;
    notifyListeners();
  }
}