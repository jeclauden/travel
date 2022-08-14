import 'package:flutter/material.dart';
import 'package:travel/utils/app_layout.dart';
import 'package:travel/widgets/ticket_bottom_section.dart';
import 'package:travel/widgets/ticket_middle_section.dart';
import 'package:travel/widgets/ticket_top_section.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final Color? textColor_3;
  final Color? textColor_4;
  final Color? topGbColor;
  final Color? middleGbColor;
  final Color? bottomGbColor;
  final Color? airplaneColor;

  const TicketView({
    Key? key,
    required this.ticket,
    this.textColor_3,
    this.textColor_4,
    this.topGbColor,
    this.middleGbColor,
    this.bottomGbColor,
    this.airplaneColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.95,
      height: 200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /*
          This container shows the top blue section of the card.
          */
          TicketTopSection(
            departure: ticket["from"],
            destination: ticket["to"],
            duration: ticket["duration"]!,
            textColor_3: textColor_3,
            textColor_4: textColor_4,
            bgColor: topGbColor,
            airplaneColor: airplaneColor,
          ),

          /*
          Orage section of the ticket
          */
          const TicketMiddleSection(),
          /*
          Bottom section of the ticket
          */
          TicketBottonSection(
            depatureDate: ticket["departure_date"],
            depatureTime: ticket["departure_time"],
            gateNumber: ticket["gate"]!,
            textColor_3: textColor_3,
            textColor_4: textColor_4,
            bgColor: bottomGbColor,
          ),
        ],
      ),
    );
  }
}
