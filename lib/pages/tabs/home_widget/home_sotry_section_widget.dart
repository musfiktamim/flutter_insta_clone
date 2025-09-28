import 'package:flutter/cupertino.dart';
import 'package:insta_clone_fixed/pages/tabs/home_widget/home_single_story_widget.dart';

class HomeSotrySectionWidget extends StatelessWidget {
  const HomeSotrySectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: [
          HomeSingleStoryWidget(),
          HomeSingleStoryWidget(),
          HomeSingleStoryWidget(),
          HomeSingleStoryWidget(),
          HomeSingleStoryWidget(),
          HomeSingleStoryWidget(),
          HomeSingleStoryWidget(),
          HomeSingleStoryWidget(),
          HomeSingleStoryWidget(),
          HomeSingleStoryWidget(),
          HomeSingleStoryWidget(),
          HomeSingleStoryWidget(),
          HomeSingleStoryWidget(),
          HomeSingleStoryWidget(),
          HomeSingleStoryWidget(),
        ],
      ),
    );
  }
}
