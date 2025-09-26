import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone_fixed/pages/tabs/account_page.dart';
import 'package:insta_clone_fixed/pages/tabs/create_page.dart';
import 'package:insta_clone_fixed/pages/tabs/home_page.dart';
import 'package:insta_clone_fixed/pages/Tabs/Reels_Page.dart';
import 'package:insta_clone_fixed/pages/Tabs/Search_Page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> tabPages = [
    HomePage(),
    SearchPage(),
    CreatePage(),
    ReelsPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: CupertinoColors.activeOrange,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded)),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded)),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded)),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow_rounded)),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded)),
        ],
      ),
      tabBuilder: (context, index) {
        return tabPages[index];
      },
    );
  }
}
