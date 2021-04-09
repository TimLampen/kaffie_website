

import 'package:flutter/material.dart';
import 'package:kaffie_website/theme/size_config.dart';

///The main theme of the application.
ThemeData appTheme() {
  return ThemeData(
    primaryColor: Colors.white,
    accentColor: Color.fromRGBO(254, 200, 154, 1),
    highlightColor: Color.fromRGBO(255, 229, 217, 1),
    primaryColorDark: Colors.black,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontFamily: "Noto Serif",
        //fontSize: SizeConfig.scaleH*10,
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
      headline2: TextStyle(
        fontFamily: "Noto Serif",
       // fontSize: SizeConfig.scaleH*3,
        color: Colors.black,
        fontWeight: FontWeight.bold
      )
    )
  );
}
