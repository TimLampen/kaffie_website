

import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';

///The main theme of the application.
ThemeData appTheme() {
  return ThemeData(
    primaryColor: Colors.white,
    accentColor: Color.fromRGBO(254, 200, 154, 1),
    highlightColor: Color.fromRGBO(255, 229, 217, 1),
    primaryColorDark: Color.fromRGBO(52, 46, 55, 1),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontFamily: "Noto Serif",
        fontSize: 64,
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
      headline2: TextStyle(
        fontFamily: "Noto Serif",
        fontSize: 24,
        color: Colors.black,
      ),
      headline3: TextStyle(
          fontFamily: "Noto Serif",
          fontSize: 16,
          color: Colors.black,
      ),
    ),
  );
}
