import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:netflix/Core/constants.dart';
import 'package:netflix/Domain/Home/home_top_rated_model/home_top_rated_model.dart';
import 'package:netflix/Presentation/Widgets/title_widget.dart';

import 'home_screen_card.dart';

class HomeScreenResuseWidget extends StatelessWidget {
  final String title;
  final List<HomeTopRatedResult> list;
  const HomeScreenResuseWidget({
    super.key,
    required this.title,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWidget(title: title),
        LimitedBox(
          maxHeight: 228,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(list.sublist(0, 10).length, (index) {
              // final image =
              //     "$kimageAppenUrl${list[index].posterPath ?? 'No Image'}";
              return HomeScreenCard(
                imageUrl:
                    "$kimageAppenUrl${list[index].posterPath ?? 'No Image'}",
              );
            }),
          ),
        )
      ],
    );
  }
}
