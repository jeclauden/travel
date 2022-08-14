import 'package:flutter/material.dart';
import 'package:travel/widgets/thick_circle.dart';

import 'dashes.dart';

class Airplane extends StatelessWidget {
  final Color? color;
  const Airplane({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            ThickCircle(
              color: color,
            ),
            Dashes(
              height: 1,
              width: 3,
              spacerFactor: 6,
              color: color,
            ),
            ThickCircle(
              color: color,
            ),
          ],
        ),
        Center(
          child: Transform.rotate(
            angle: 1.5,
            child: Icon(
              Icons.local_airport_rounded,
              color: color ?? Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
