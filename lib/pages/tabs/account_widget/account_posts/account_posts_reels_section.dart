import 'package:flutter/cupertino.dart';

class AccountPostsReelsSection extends StatelessWidget {
  const AccountPostsReelsSection({super.key});

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
          color: CupertinoColors.systemPurple,
          child: Center(child: Text('Reel $index')),
        ),
      ),
    );
  }
}
