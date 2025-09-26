import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePost {
  static Column homeSinglePost(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 10,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/149824520?v=4",
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Musfikur Rahman",
                        textScaler: TextScaler.linear(1.2),
                      ),
                      Text("Tokyo Japan", textScaler: TextScaler.linear(0.7)),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                child: Icon(Icons.more_horiz),
                onTap: () => showCupertinoModalPopup(
                  context: context,
                  builder: (context) => CupertinoActionSheet(
                    title: Text("More Properties"),
                    actions: <CupertinoActionSheetAction>[
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Add to favorites"),
                      ),
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Follow / Unfollow"),
                      ),
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Why you're seeing this post"),
                      ),
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Hide / Unhide"),
                      ),
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("About this account"),
                      ),
                      CupertinoActionSheetAction(
                        isDestructiveAction: true,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Report"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        AspectRatio(
          aspectRatio: 4 / 5,
          child: Image.network(
            "https://avatars.githubusercontent.com/u/149824520?v=4",
            fit: BoxFit.fitHeight,
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 4, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    spacing: 20,
                    children: [
                      Icon(Icons.favorite_border_rounded, size: 30),
                      Icon(CupertinoIcons.chat_bubble, size: 30),
                      Icon(Icons.send_rounded, size: 30),
                    ],
                  ),
                  Icon(CupertinoIcons.bookmark, size: 30),
                ],
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Musfikur_Rahman",
                      style: TextStyle(fontSize: 16),
                    ),
                    TextSpan(
                      text:
                          " _ "
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the...",
                      style: TextStyle(
                        fontSize: 13,
                        color: const Color.fromARGB(195, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),

              Text(
                "1 hours",
                style: TextStyle(color: CupertinoColors.inactiveGray),
                textScaler: TextScaler.linear(0.9),
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
