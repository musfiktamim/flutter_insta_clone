import 'package:flutter/cupertino.dart';
import 'package:insta_clone_fixed/pages/tabs/home_widget/home_navigation_bar_widget.dart';
import 'package:insta_clone_fixed/pages/tabs/home_widget/home_post_widget.dart';
import 'package:insta_clone_fixed/pages/tabs/home_widget/home_sotry_section_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: homenavigationbarwidget(context),
      child: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsetsGeometry.only(top: 10),
                child: HomeSotrySectionWidget(),
              ),
            ),

            SliverList.builder(
              itemBuilder: (context, index) => HomePostWidget(),
              itemCount: 10,
            ),
          ],
        ),
      ),
    );
  }
}
