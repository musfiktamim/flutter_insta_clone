import 'package:flutter/cupertino.dart';
import 'package:insta_clone_fixed/pages/tabs/search_widget/search_main_widget.dart';
import 'package:insta_clone_fixed/pages/tabs/search_widget/search_naivgation_bar_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: searchnavigationbar(context),
      child: SafeArea(child: SearchMainWidget()),
    );
  }
}
