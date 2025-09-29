import 'package:flutter/cupertino.dart';

class AccountPostsRepostsSection extends StatelessWidget {
  const AccountPostsRepostsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemCount: 20,
      itemBuilder: (context, index) => ClipRRect(
        clipBehavior: Clip.antiAlias,
        // color: CupertinoColors.activeOrange,
        borderRadius: BorderRadiusGeometry.circular(10),
        child: Container(
          color: CupertinoColors.systemBlue,
          child: Center(child: Text('Repost $index')),
        ),
      ),
    );
  }
}
