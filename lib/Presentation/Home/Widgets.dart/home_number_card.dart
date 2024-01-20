import 'package:flutter/cupertino.dart';
import 'package:stroke_text/stroke_text.dart';

import '../../../Core/colors.dart';

class HomeNumberCard extends StatelessWidget {
  final int index;
  final String imageUrl;
  const HomeNumberCard({
    super.key,
    required this.index,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
            ),
            Container(
              height: 218,
              width: size * 0.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 80,
          left: -7,
          child: StrokeText(
            strokeColor: kwhitecolor,
            strokeWidth: 5,
            text: '${index + 1}',
            textStyle: const TextStyle(
                fontSize: 127, fontWeight: FontWeight.bold, color: kblackcolor),
          ),
        ),
      ],
    );
  }
}
