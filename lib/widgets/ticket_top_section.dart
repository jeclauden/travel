import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel/utils/airplane.dart';
import '../utils/app_styles.dart';

class TicketTopSection extends StatelessWidget {
  final Map<String, dynamic> departure;
  final Map<String, dynamic> destination;
  final String duration;

  const TicketTopSection(
      {Key? key,
      required this.departure,
      required this.destination,
      required this.duration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Flexible(
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      departure["code"]!,
                      style:
                          Styles.headLineStyle_3.copyWith(color: Colors.white),
                    ),
                    const Gap(5),
                    Text(
                      departure["name"]!,
                      style:
                          Styles.headLineStyle_4.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Airplane(),
                    Text(
                      duration,
                      style:
                          Styles.headLineStyle_4.copyWith(color: Colors.white),
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
                      style:
                          Styles.headLineStyle_3.copyWith(color: Colors.white),
                    ),
                    const Gap(5),
                    Text(
                      destination["name"]!,
                      style:
                          Styles.headLineStyle_4.copyWith(color: Colors.white),
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
