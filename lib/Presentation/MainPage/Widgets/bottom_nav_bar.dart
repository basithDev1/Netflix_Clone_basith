import 'package:flutter/material.dart';

ValueNotifier<int> selectedindex = ValueNotifier(0);

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedindex,
        builder: (BuildContext ctx, int newvalue, _) {
          return BottomNavigationBar(
            currentIndex: newvalue,
            onTap: (value) {
              selectedindex.value = value;
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'New&Hot',
                icon: Icon(Icons.collections),
              ),
              BottomNavigationBarItem(
                label: 'FirstLaughs',
                icon: Icon(Icons.emoji_emotions),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: 'Downloads',
                icon: Icon(Icons.download),
              ),
            ],
          );
        });
  }
}
