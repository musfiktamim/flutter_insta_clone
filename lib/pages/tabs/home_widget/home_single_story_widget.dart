import 'package:flutter/cupertino.dart';
import 'package:insta_clone_fixed/important_functions/image_related_functions.dart';

class HomeSingleStoryWidget extends StatelessWidget {
  const HomeSingleStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(65 / 2),
          ),
          clipBehavior: Clip.antiAlias,
          child: ImageRelatedFunctions.getImage(
            "https://avatars.githubusercontent.com/u/149824520?v=4",
          ),
        ),
        Text("Musfik", textScaler: TextScaler.linear(0.9)),
      ],
    );
  }
}
