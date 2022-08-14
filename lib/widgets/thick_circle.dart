import 'package:flutter/material.dart';

class ThickCircle extends StatelessWidget {
  final Color? color;
  const ThickCircle({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2.5,
          color: color ?? Colors.white,
        ),
      ),
    );
  }
}
