import 'package:flutter/material.dart';

class MyThemeData {
  static Color standardColor = const Color(0xFFB7935F);
  static Color standardColorDark = const Color(0xFF141B30);
  static Color blackColor = const Color(0xFF242424);
  static Color whiteColor = const Color(0xFFFFFFFF);
  static Color yelloColor = const Color(0xFFa98d2e);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: standardColor,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: blackColor,
        fontWeight: FontWeight.w700,
      ),
      headline2: TextStyle(
        fontSize: 25,
        color: blackColor,
        fontWeight: FontWeight.w400,
      ),
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: blackColor,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: standardColorDark,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: whiteColor,
        fontWeight: FontWeight.w700,
      ),
      headline2: TextStyle(
        fontSize: 25,
        color: yelloColor,
        fontWeight: FontWeight.w400,
      ),
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: whiteColor,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yelloColor,
      unselectedItemColor: whiteColor,
    ),
  );
}
