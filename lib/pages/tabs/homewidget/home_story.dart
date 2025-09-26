import 'package:flutter/cupertino.dart';

class HomeStory {
  static SingleChildScrollView homeStorySection(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: [
          storyBox(context),
          storyBox(context),
          storyBox(context),
          storyBox(context),
          storyBox(context),
          storyBox(context),
          storyBox(context),
          storyBox(context),
          storyBox(context),
          storyBox(context),
          storyBox(context),
          storyBox(context),
          storyBox(context),
        ],
      ),
    );
  }

  static Column storyBox(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(65 / 2),
          ),
          clipBehavior: Clip.antiAlias,
          child: Image.network(
            "https://avatars.githubusercontent.com/u/149824520?v=4",
          ),
        ),
        Text("Musfik", textScaler: TextScaler.linear(0.9)),
      ],
    );
  }
}
