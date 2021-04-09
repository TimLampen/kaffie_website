import 'package:flutter/material.dart';

///Used to make sure that all the sizes are reactive to the size of the device used with the app.
class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double scaleH;
  static double scaleW;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    scaleW = screenWidth / 100;
    scaleH = screenHeight / 100;
  }
}