import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/Core/colors.dart';

class DownloadFancyWidget extends StatelessWidget {
  const DownloadFancyWidget({
    required this.margin,
    this.angle = 0,
    super.key,
    required this.height,
    required this.image,
    required this.width,
  });

  final double height;
  final double width;
  final double angle;
  final EdgeInsets margin;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: kblackcolor,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
