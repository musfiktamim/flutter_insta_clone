import 'package:flutter/material.dart';
import 'package:insta_clone_fixed/important_functions/image_related_functions.dart';
import 'package:insta_clone_fixed/pages/widgets/num_text_show_widget.dart';

class AccountInfoWidget extends StatelessWidget {
  const AccountInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Row(
            spacing: 15,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: ImageRelatedFunctions.getAvatar(
                  "https://avatars.githubusercontent.com/u/149824520?v=4",
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Musfikur Rahman",
                      textScaler: TextScaler.linear(1.4),
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NumTextShowWidget(number: 100, label: "Posts"),
                        NumTextShowWidget(number: 74, label: "Followers"),
                        NumTextShowWidget(number: 72, label: "Following"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
