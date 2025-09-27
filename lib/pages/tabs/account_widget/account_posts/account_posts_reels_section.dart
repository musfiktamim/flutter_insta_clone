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
        mainAxisSpacing: 3,
        crossAxisSpacing: 3,
      ),
      itemCount: 20,
      itemBuilder: (context, index) => Container(
        color: CupertinoColors.systemPurple,
        child: Center(child: Text('Reels $index')),
      ),
    );
  }
}
