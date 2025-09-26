import 'package:flutter/cupertino.dart';
import 'package:insta_clone_fixed/pages/tabs/home_widget/home_navigation_bar.dart';
import 'package:insta_clone_fixed/pages/tabs/home_widget/home_post.dart';
import 'package:insta_clone_fixed/pages/tabs/home_widget/home_story.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: HomeNavigationBar.homenavigationbar(context),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(top: 10),
              child: HomeStory.homeStorySection(context),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) =>
                    HomePost.homeSinglePost(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
