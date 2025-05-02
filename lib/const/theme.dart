import 'package:flutter/material.dart';
import 'package:project_test/const/color.dart';

class Ptheme {
  static ThemeData lightTeme = ThemeData(
    appBarTheme: AppBarLight(),
    fontFamily: "Manrope",
    scaffoldBackgroundColor: PColor.primary,
    textTheme: textThemeLight(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme AppBarLight() {
  return AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: PColor.primary,
  );
}

TextTheme textThemeLight() {
  return TextTheme(
    bodyLarge: TextStyle(color: PColor.textbody),
    bodyMedium: TextStyle(color: PColor.subtitle),
  );
}
