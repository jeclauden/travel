import 'package:flutter/material.dart';
import '../utils/dashes.dart';

class TicketMiddleSection extends StatelessWidget {
  const TicketMiddleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 50, 63, 63),
      child: Row(
        children: const [
          SizedBox(
            height: 20,
            width: 10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          Dashes(height: 1, width: 5, spacerFactor: 15),
          SizedBox(
            height: 20,
            width: 10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
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
