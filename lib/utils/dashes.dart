import 'package:flutter/material.dart';

class Dashes extends StatelessWidget {
  final double height;
  final double width;
  final Color? color;
  final int spacerFactor;

  const Dashes({
    required this.height,
    required this.width,
    required this.spacerFactor,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 24,
        child: LayoutBuilder(builder: (
          BuildContext context,
          BoxConstraints constraints,
        ) {
          return Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            direction: Axis.horizontal,
            children: List.generate(
              (constraints.constrainWidth() / spacerFactor).floor(),
              (index) => SizedBox(
                width: width,
                height: height,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: color ?? Colors.white),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
