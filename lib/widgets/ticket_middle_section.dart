import 'package:flutter/material.dart';
import '../utils/dashes.dart';

class TicketMiddleSection extends StatelessWidget {
  final Color? sectionColor;
  const TicketMiddleSection({
    Key? key,
    this.sectionColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 50, 63, 63),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: sectionColor ?? Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          const Dashes(height: 1, width: 5, spacerFactor: 15),
          SizedBox(
            height: 20,
            width: 10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: sectionColor ?? Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
