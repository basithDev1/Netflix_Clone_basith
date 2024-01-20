import 'package:flutter/material.dart';
import 'package:netflix/Core/colors.dart';
import 'package:netflix/Core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title, this.size = 10});

  final String title;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Icon(
            Icons.cast,
            color: kwhitecolor,
            size: 30,
          ),
          ksizedbox,
          Container(
            width: 30,
            height: 30,
            color: kbluecolor,
          ),
          ksizedbox
        ],
      ),
    );
  }
}
