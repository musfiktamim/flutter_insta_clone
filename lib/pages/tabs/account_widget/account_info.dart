import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone_fixed/important_functions/image_related_functions.dart';

class Accountinfo {
  static Column accountinfo(BuildContext context) {
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
                        numTextShow(context, 100, "Posts"),
                        numTextShow(context, 74, "Followers"),
                        numTextShow(context, 72, "Following"),
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

  static RichText numTextShow(BuildContext? context, int number, String label) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        text: "${number.toString()}\n",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        children: [
          TextSpan(
            text: label,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 15,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
  }

  static Column accountBioInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5),
        Text(
          "Account Type",
          style: TextStyle(color: CupertinoColors.inactiveGray),
          textScaler: TextScaler.linear(1.1),
        ),
        Text(
          "This is the bio asd asd asd asd asd asd as d asd",
          style: TextStyle(
            color: CupertinoColors.extraLightBackgroundGray,
            height: 1,
          ),
          textScaler: TextScaler.linear(0.9),
        ),
        SizedBox(height: 5),
        Text(
          "This is link",
          style: TextStyle(
            color: CupertinoColors.extraLightBackgroundGray,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
          textScaler: TextScaler.linear(1),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CupertinoButton.filled(
              onPressed: () {},
              sizeStyle: CupertinoButtonSize.medium,
              minimumSize: Size(MediaQuery.of(context).size.width / 2.1, 15),
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(255, 65, 63, 63),
              child: Text("Edit Profile"),
            ),
            CupertinoButton.filled(
              onPressed: () {},
              sizeStyle: CupertinoButtonSize.medium,
              minimumSize: Size(MediaQuery.of(context).size.width / 2.1, 15),
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(255, 65, 63, 63),
              child: Text("Share Profile"),
            ),
          ],
        ),
      ],
    );
  }
}
