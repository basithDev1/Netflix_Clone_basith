import 'package:flutter/cupertino.dart';
import 'package:netflix/Core/constants.dart';
import 'package:netflix/Domain/Home/home_tv_model/home_tv_model.dart';
import 'package:netflix/Presentation/Home/Widgets.dart/home_number_card.dart';

import '../../Widgets/title_widget.dart';

class HomeScreenResuseWidget2 extends StatelessWidget {
  final List<HomeTvResult> list;
  final String title;
  const HomeScreenResuseWidget2({
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
              // print('your index is$index');

              return HomeNumberCard(
                index: index,
                imageUrl:
                    "$kimageAppenUrl${list[index + 5].posterPath ?? 'No Image'}",
              );
            }),
          ),
        ),
      ],
    );
  }
}
