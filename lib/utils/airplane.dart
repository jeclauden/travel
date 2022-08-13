import 'package:flutter/material.dart';
import 'package:travel/widgets/thick_circle.dart';

import 'dashes.dart';

class Airplane extends StatelessWidget {
  const Airplane({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: const [
            ThickCircle(),
            Dashes(height: 1, width: 3, spacerFactor: 6),
            ThickCircle(),
          ],
        ),
        Center(
          child: Transform.rotate(
            angle: 1.5,
            child: const Icon(
              Icons.local_airport_rounded,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
