import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone_fixed/pages/tabs/account_widget/account_posts/account_posts_collabs_section.dart';
import 'package:insta_clone_fixed/pages/tabs/account_widget/account_posts/account_posts_posts_section.dart';
import 'package:insta_clone_fixed/pages/tabs/account_widget/account_posts/account_posts_reels_section.dart';
import 'package:insta_clone_fixed/pages/tabs/account_widget/account_posts/account_posts_reposts_section.dart';

class AccountPostsSection extends StatefulWidget {
  const AccountPostsSection({super.key});

  @override
  State<AccountPostsSection> createState() => _AccountPostsSectionState();
}

class _AccountPostsSectionState extends State<AccountPostsSection> {
  List<Widget> showing = [
    AccountPostsPostsSection(),
    AccountPostsReelsSection(),
    AccountPostsRepostsSection(),
    AccountPostsCollabsSection(),
  ];

  int _segmentvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //topbar
        SizedBox(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: CupertinoSlidingSegmentedControl(
            proportionalWidth: true,
            children: {
              0: Icon(
                _segmentvalue == 0 ? Icons.apps_rounded : Icons.apps_outlined,
                size: 35,
              ),
              1: Icon(
                _segmentvalue == 1 ? Icons.movie_rounded : Icons.movie_outlined,
                size: 35,
              ),
              2: Icon(
                _segmentvalue == 2
                    ? Icons.cached_rounded
                    : Icons.cached_outlined,
                size: 35,
              ),
              3: Icon(
                _segmentvalue == 3
                    ? Icons.handshake_rounded
                    : Icons.handshake_outlined,
                size: 35,
              ),
            },
            groupValue: _segmentvalue,
            onValueChanged: (int? value) {
              setState(() {
                _segmentvalue = value as int;
              });
            },
          ),
        ),
        showing[_segmentvalue],
      ],
    );
  }
}
