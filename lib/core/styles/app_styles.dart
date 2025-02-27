import 'package:flutter/material.dart';

Color primary = Color(0XFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgcolor = Color(0xFFeeedf2);
  static Color textColor = Color(0XFF3b3b3b);
  static Color ticketBlue = Color(0xFF526799);
  static Color ticketRed = Color(0xFFF37867);
  static Color secColor = Colors.white;
    static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textColor
  );
  static TextStyle headline1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
    static TextStyle headline2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headline3 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headline4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
