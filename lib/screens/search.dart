import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel/utils/app_layout.dart';
import 'package:travel/utils/app_styles.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
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
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Styles.primaryColor,
              ),
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.45,
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(20)),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: const Center(
                      child: Text("Airline Tickets"),
                    ),
                  ),
                  Container(
                    width: size.width * 0.45,
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(20)),
                      color: Colors.transparent,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: const Center(
                      child: Text("Hotels"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
