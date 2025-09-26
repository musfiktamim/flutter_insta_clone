import 'package:flutter/cupertino.dart';
import 'package:insta_clone_fixed/pages/Tabs/searchwidget/search_main.dart';
import 'package:insta_clone_fixed/pages/Tabs/searchwidget/search_naivgation_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: SearchNaivgationBar.searchnavigationbar(context),
      child: SafeArea(child: SearchMain.intialsearchshowingcontent(context)),
    );
  }
}
