import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel/utils/app_styles.dart';
import 'package:travel/widgets/app_tabs.dart';
import 'package:travel/widgets/button.dart';
import 'package:travel/widgets/search_form.dart';
import 'package:travel/widgets/view_all.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: [
          const Gap(40),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle_1.copyWith(fontSize: 35),
          ),
          const Gap(40),
          const AppTabs(firstTab: "Airline Tickets", secondTab: "Hotels"),
          const Gap(20),
          const SearchForm(
            title: "Departure",
            icon: Icons.flight_takeoff,
          ),
          const Gap(20),
          const SearchForm(title: "Arrival", icon: Icons.flight_land),
          const Gap(20),
          const Button(),
          const Gap(20),
          const DoubleText(
            bigText: "Upcoming Flights",
            smallText: "View All",
          ),
        ],
      ),
    );
  }
}
