import 'package:flutter/material.dart';
import 'package:travel/utils/app_layout.dart';
import 'package:travel/utils/trip_details.dart';
import 'package:travel/widgets/ticket_bottom_section.dart';
import 'package:travel/widgets/ticket_middle_section.dart';
import 'package:travel/widgets/ticket_top_section.dart';

class TicketView extends StatelessWidget {
  final Trip trip;
  const TicketView({Key? key, required this.trip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            This container shows the top blue section of the card.
            */
            TicketTopSection(
                departure: trip.depature,
                destination: trip.destination,
                duration: trip.duration),

            /*
            Orage section of the ticket
            */
            const TicketMiddleSection(),
            /*
            Bottom section of the ticket
            */
            TicketBottonSection(
                depatureDate: trip.depatureDate,
                depatureTime: trip.depatureTime,
                gateNumber: trip.gateNumber),
          ],
        ),
      ),
    );
  }
}
