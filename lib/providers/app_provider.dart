import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String AppLanguage = 'en';
  ThemeMode themeMode = ThemeMode.light;

  void ChangeAppLanguage(String languageCode) {
    AppLanguage = languageCode;
    notifyListeners(); // This is Observabule Pattern ************
  }

  void ChangeAppTheme(ThemeMode theme) {
    themeMode = theme;
    notifyListeners(); // This is Observabule Pattern ************
  }

  String changeMainBackground() {
    return themeMode == ThemeMode.light
        ? "assets/images/main_background.png"
        : "assets/images/baground_dark.png";
  }
}
