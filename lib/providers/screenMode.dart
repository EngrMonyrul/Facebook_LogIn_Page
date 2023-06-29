import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ScreenMode with ChangeNotifier {
  bool screenMode = false;

  ThemeData _screenColor = ThemeData();

  ThemeData get screenModeSet => _screenColor;

  void setMode() {
    screenMode = !screenMode;
    _screenColor = screenMode
        ? ThemeData(brightness: Brightness.light)
        : ThemeData(brightness: Brightness.dark);
    notifyListeners();
  }
}
