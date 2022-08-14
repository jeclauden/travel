import 'package:flutter/material.dart';
import 'package:travel/utils/app_layout.dart';
import 'package:travel/utils/app_styles.dart';

class AppTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTabs({
    Key? key,
    required this.firstTab,
    required this.secondTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(2.5),
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
              child: Center(
                child: Text(
                  firstTab,
                  style: Styles.textStyle,
                ),
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
              child: Center(
                child: Text(
                  secondTab,
                  style: Styles.textStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
