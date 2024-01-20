import 'package:flutter/material.dart';
import 'package:netflix/Core/colors.dart';

class MainImageWidget extends StatelessWidget {
  final double fontsize;
  final double size;
  final String text;
  final IconData icon;
  final Color? color;
  final FontWeight? weight;
  const MainImageWidget({
    super.key,
    required this.icon,
    required this.text,
    this.size = 30,
    this.fontsize = 15,
    this.color = Colors.white,
    this.weight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhitecolor,
          size: size,
        ),
        Text(
          text,
          style:
              TextStyle(fontWeight: weight, fontSize: fontsize, color: color),
        ),
      ],
    );
  }
}
