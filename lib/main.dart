import 'package:flutter/material.dart';
import 'package:travel/utils/app_styles.dart';

import 'screens/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Styles.primaryColor,
      ),
      home: const BottomBar(),
    );
  }
}
