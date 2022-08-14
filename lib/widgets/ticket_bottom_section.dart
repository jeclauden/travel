import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';

class TicketBottonSection extends StatelessWidget {
  final String depatureDate;
  final String depatureTime;
  final int gateNumber;
  final Color? textColor_3;
  final Color? textColor_4;

  final Color? bgColor;

  const TicketBottonSection({
    Key? key,
    required this.depatureDate,
    required this.depatureTime,
    required this.gateNumber,
    this.textColor_3,
    this.textColor_4,
    this.bgColor,
  }) : super(key: key);

  _getTextStyles(int headLine) {
    if (headLine == 3) {
      return Styles.headLineStyle_3
          .copyWith(color: textColor_3 ?? Colors.white);
    }
    return Styles.headLineStyle_4.copyWith(color: textColor_4 ?? Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor ?? Styles.orangeColor,
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
                      depatureDate,
                      style: _getTextStyles(3),
                    ),
                    const Gap(5),
                    Text(
                      "Date",
                      style: _getTextStyles(4),
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
                      depatureTime,
                      style: _getTextStyles(3),
                    ),
                    const Gap(5),
                    Text(
                      "Departure Time",
                      style: _getTextStyles(4),
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
                      gateNumber.toString(),
                      style: _getTextStyles(3),
                    ),
                    const Gap(5),
                    Text(
                      "Gate",
                      style: _getTextStyles(4),
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
