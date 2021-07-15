import 'package:flutter/material.dart';

class HexColor extends Color{
  static int _getColorFromHex(String hexColor){
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6){
      hexColor == 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor):super(_getColorFromHex(hexColor));
}

//How to use

// Color color1 = HexColor("B74093")
// Color color2 = HexColor("B74093")
// Color color1 = HexColor("#88B74093") // if you wish to use ARGB form