import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Download/screen_downloads.dart';
import 'package:netflix/Presentation/FastLaughs/screen_fast_laughs.dart';
import 'package:netflix/Presentation/Home/screen_home.dart';
import 'package:netflix/Presentation/MainPage/Widgets/bottom_nav_bar.dart';
import 'package:netflix/Presentation/New&Hot/screen_new_hot.dart';
import 'package:netflix/Presentation/Search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final List<Widget> pages = [
    const ScreenHome(),
    const ScreenNewHot(),
    const ScreenFastLaughs(),
    const ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedindex,
        builder: (BuildContext ctx, int newpage, _) {
          return SafeArea(
            child: Center(
              child: pages.elementAt(newpage),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
