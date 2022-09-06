// import 'package:flutter/material.dart';
//
// // const brown = const Color("0xFFB2522");
//
// class HexColor extends Color{
//   static int _getColorFromHex(String hexColor) {
//     hexColor = hexColor.toUpperCase().replaceAll("#", "");
//     if (hexColor.length == 6){
//       hexColor = "FF" + hexColor;
//     }
//     return int.parse(hexColor, radix: 16);
//   }
//   HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
// }
//
// Color splashBackground = HexColor("#E5E5E5");
// Color purple = HexColor("#7237C5");

import 'package:flutter/material.dart';

// const brown = const Color("0xFFB2522");

class HexColor extends Color{
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6){
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}


Color purple = HexColor("#8C00A3");
Color background = HexColor("#211D22");
Color otp = HexColor("#6E6D6F");
Color neutral = HexColor("#F0EBF2");
Color grey = HexColor("#6E6D6F");
Color fBlue = HexColor("#3E7FFF");
Color dirtyWhite = HexColor("#CDD1D6");
Color deepBlue = HexColor("#5B53F0");
Color lightBlue = HexColor("#736CFC");
Color fakeBlack = HexColor("#313131");
Color btc = HexColor("#F89F33");
Color xrp = HexColor("#1486BE");
Color light = HexColor("#CDD1D6");




