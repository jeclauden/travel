import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel/utils/app_layout.dart';
import 'package:travel/utils/app_styles.dart';

class HotelScteen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScteen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 10),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${hotel["image"]}'),
              ),
            ),
          ),
          const Gap(15),
          Text(
            hotel["place"],
            style: Styles.headLineStyle_2.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            hotel["destination"],
            style: Styles.headLineStyle_3.copyWith(color: Colors.white),
          ),
          const Gap(5),
          Text(
            "\$${hotel["price"].toString()}/Night",
            style: Styles.headLineStyle_3.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
