import 'package:flutter/material.dart';
import 'package:travel/utils/app_styles.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Styles.blueColor,
      ),
      child: Center(
        child: Text(
          "Find Tickets",
          style: Styles.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
