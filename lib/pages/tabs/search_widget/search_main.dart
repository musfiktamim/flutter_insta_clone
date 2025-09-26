import 'package:flutter/cupertino.dart';

class SearchMain {
  static CustomScrollView intialsearchshowingcontent(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(2),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: CupertinoColors.extraLightBackgroundGray,
                    width: 2,
                  ),
                ),
              );
            }, childCount: 30),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // 3 images per row (like Instagram)
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
            ),
          ),
        ),
      ],
    );
  }
}
