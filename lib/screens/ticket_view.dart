import 'package:flutter/material.dart';
import 'package:travel/utils/app_layout.dart';
import 'package:travel/widgets/ticket_bottom_section.dart';
import 'package:travel/widgets/ticket_middle_section.dart';
import 'package:travel/widgets/ticket_top_section.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.95,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            This container shows the top blue section of the card.
            */
            TicketTopSection(
                departure: ticket["from"],
                destination: ticket["to"],
                duration: ticket["duration"]!),

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
                gateNumber: ticket["gate"]!),
          ],
        ),
      ),
    );
  }
}
