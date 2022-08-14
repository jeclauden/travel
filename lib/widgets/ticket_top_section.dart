import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel/utils/airplane.dart';
import '../utils/app_styles.dart';

class TicketTopSection extends StatelessWidget {
  final Map<String, dynamic> departure;
  final Map<String, dynamic> destination;
  final String duration;
  final Color? textColor_3;
  final Color? textColor_4;

  final Color? bgColor;
  final Color? airplaneColor;

  const TicketTopSection({
    Key? key,
    required this.departure,
    required this.destination,
    required this.duration,
    this.textColor_3,
    this.textColor_4,
    this.bgColor,
    this.airplaneColor,
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
        color: bgColor ?? Styles.greyColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
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
                      departure["code"]!,
                      style: _getTextStyles(3),
                    ),
                    const Gap(5),
                    Text(
                      departure["name"]!,
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
                    Airplane(
                      color: airplaneColor,
                    ),
                    Text(
                      duration,
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
                      destination["code"]!,
                      style: _getTextStyles(3),
                    ),
                    const Gap(5),
                    Text(
                      destination["name"]!,
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
