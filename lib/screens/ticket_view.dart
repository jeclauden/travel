import 'package:flutter/material.dart';
import 'package:travel/utils/app_layout.dart';
import 'package:travel/utils/app_styles.dart';
import 'package:travel/widgets/thick_circle.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Styles.greyColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: Styles.headLineStyle_3
                            .copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      const ThickCircle(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  var numberOfdashes =
                                      (constraints.constrainWidth() / 6)
                                          .floor();
                                  return Flex(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      direction: Axis.horizontal,
                                      children: List.generate(
                                          numberOfdashes,
                                          (index) => const SizedBox(
                                                width: 3,
                                                height: 1,
                                                child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white)),
                                              )));
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickCircle(),
                      const Spacer(),
                      Text(
                        "London",
                        style: Styles.headLineStyle_3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
