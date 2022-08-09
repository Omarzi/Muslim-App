import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLanguage = 'ar';
  ThemeMode currentTheme = ThemeMode.light;

  void changeLanguage(String newLan) {
    if (currentLanguage == newLan) {
      return;
    }
    currentLanguage = newLan;
    notifyListeners();
  }

  String getMainBackground() {
    return isDark()
        ? 'assets/images/baground_dark.png'
        : 'assets/images/main_background.png';
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  void changeTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) {
      return;
    }
    currentTheme = newTheme;
    notifyListeners();
  }
}
