import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../Core/colors.dart';
import '../../../Core/constants.dart';
import '../../Home/Widgets.dart/main_image_widget.dart';

class ComigSoonWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final DateTime realeaseDate;
  final String id;

  const ComigSoonWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.realeaseDate,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        kheightsizedbox,
        Row(
          children: [
            SizedBox(
              width: 50,
              height: 480,
              child: Column(
                children: [
                  Text(
                    DateFormat('MMM').format(realeaseDate),
                    style: TextStyle(
                      color: kgreycolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    realeaseDate.day.toString(),
                    style: const TextStyle(
                        fontSize: 35,
                        color: kwhitecolor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              //color: kbluecolor,
              width: size.width - 50,
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        width: size.width - 50,
                        height: size.width - 50 * 3.5,
                        decoration: const BoxDecoration(
                          color: kblackcolor,
                        ),
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(99, 0, 0, 0),
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
                  Center(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.sedgwickAve(
                                fontSize: 30, color: kwhitecolor),
                          ),
                        ),
                        MainImageWidget(
                          color: kgreycolor,
                          icon: Icons.crisis_alert_outlined,
                          text: 'Remind me',
                          size: 25,
                          fontsize: 15,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: MainImageWidget(
                            color: kgreycolor,
                            icon: Icons.info_outline_rounded,
                            text: 'Info',
                            size: 25,
                            fontsize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Coming on ${DateFormat('EEEE').format(realeaseDate)}",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  kseperatedsizedbox,
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    // maxLines: 1,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kwhitecolor),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: Text(
                      description,
                      maxLines: 7,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(
                        height: 1.1,
                        fontSize: 16,
                        color: Color.fromARGB(186, 245, 245, 245),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
