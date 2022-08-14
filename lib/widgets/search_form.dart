import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel/utils/app_styles.dart';

class SearchForm extends StatelessWidget {
  final String title;
  final IconData? icon;
  const SearchForm({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFBFC2DF),
            size: 30,
          ),
          const Gap(10),
          Text(
            title,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
