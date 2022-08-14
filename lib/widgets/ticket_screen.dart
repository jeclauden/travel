import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel/screens/ticket_view.dart';
import 'package:travel/utils/app_layout.dart';
import 'package:travel/utils/app_styles.dart';
import 'package:travel/utils/data.dart';
import 'package:travel/widgets/app_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 15,
            ),
            children: [
              const Gap(40),
              Text(
                "Tickets",
                style: Styles.headLineStyle_2,
              ),
              const Gap(40),
              const AppTabs(firstTab: "Upcoming", secondTab: "Previous"),
              const Gap(40),
              Container(
                // padding: const EdgeInsets.only(left: 16),
                child: TicketView(ticket: tickets[0]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
