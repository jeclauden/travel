import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';

class TicketBottonSection extends StatelessWidget {
  final String depatureDate;
  final String depatureTime;
  final int gateNumber;

  const TicketBottonSection(
      {Key? key,
      required this.depatureDate,
      required this.depatureTime,
      required this.gateNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Styles.orangeColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date",
                      style:
                          Styles.headLineStyle_4.copyWith(color: Colors.white),
                    ),
                    const Gap(5),
                    Text(
                      depatureDate,
                      style:
                          Styles.headLineStyle_3.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Time",
                      style:
                          Styles.headLineStyle_4.copyWith(color: Colors.white),
                    ),
                    const Gap(5),
                    Text(
                      depatureTime,
                      style:
                          Styles.headLineStyle_3.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Gate",
                      style:
                          Styles.headLineStyle_4.copyWith(color: Colors.white),
                    ),
                    const Gap(5),
                    Text(
                      gateNumber.toString(),
                      style:
                          Styles.headLineStyle_3.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
