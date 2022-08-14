import 'package:flutter/material.dart';
import 'package:travel/utils/app_styles.dart';

class DoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;

  const DoubleText({
    Key? key,
    required this.bigText,
    required this.smallText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLineStyle_2,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
