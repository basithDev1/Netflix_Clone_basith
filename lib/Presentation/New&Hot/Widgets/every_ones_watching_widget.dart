import 'package:flutter/material.dart';

import '../../../Core/colors.dart';
import '../../../Core/constants.dart';
import '../../Home/Widgets.dart/main_image_widget.dart';

class EveryOneWatchingWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String id;
  const EveryOneWatchingWidget({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 7, right: 7),
      child: Column(
        children: [
          SizedBox(
            height: size * 1.43,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kheightsizedbox,
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 24,
                      color: kwhitecolor,
                      fontWeight: FontWeight.bold),
                ),
                ksizedbox5,
                Expanded(
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 16.5,
                      color: kNewandHotfontcolor,
                      height: 1.4,
                    ),
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                      ),
                      child: Container(
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(imageUrl),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(212, 0, 0, 0),
                        radius: 25,
                        child: Icon(
                          Icons.volume_off,
                          color: kwhitecolor,
                        ),
                      ),
                    ),
                  ],
                ),
                kheightsizedbox,
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 14, top: 5),
                      child: MainImageWidget(
                        icon: Icons.share,
                        text: 'Share',
                        size: 37,
                        weight: FontWeight.normal,
                        color: kNewandHotfontcolor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: MainImageWidget(
                        icon: Icons.add,
                        text: 'My List',
                        size: 40,
                        weight: FontWeight.normal,
                        color: kNewandHotfontcolor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: MainImageWidget(
                        color: kNewandHotfontcolor,
                        icon: Icons.play_arrow,
                        text: 'Play',
                        size: 50,
                        weight: FontWeight.normal,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
