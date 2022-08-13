import 'package:flutter/material.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getWidth(BuildContext context, double width) {
    return MediaQuery.of(context).size / width;
  }
}
