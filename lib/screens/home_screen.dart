import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel/screens/ticket_view.dart';
import 'package:travel/utils/app_styles.dart';
import 'package:travel/utils/data.dart';
import 'package:travel/widgets/hotel.dart';
import 'package:travel/widgets/view_all.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headLineStyle_3,
                        ),
                        const Gap(10),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle_1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/one.png'),
                          )),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular),
                      Text(
                        "Search",
                        style: Styles.headLineStyle_4,
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                const DoubleText(
                  bigText: "Upcoming Flights",
                  smallText: "View All",
                ),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: tickets
                    .map((ticket) => TicketView(ticket: ticket))
                    .toList()),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: const DoubleText(
              bigText: "Hotels",
              smallText: "View All",
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotels.map((e) => HotelCard(hotel: e)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
