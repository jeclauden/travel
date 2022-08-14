import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  // Colors
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color greyColor = const Color(0xFF526799);
  static Color orangeColor = const Color(0xFFF37B67);
  static Color blueColor = const Color(0xD91130CE);
  // Text styles
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle_1 = TextStyle(
    fontSize: 26,
    color: textColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headLineStyle_2 = TextStyle(
    fontSize: 21,
    color: textColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headLineStyle_3 = TextStyle(
    fontSize: 17,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle_4 = TextStyle(
    fontSize: 14,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
}
