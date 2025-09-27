import 'package:flutter/cupertino.dart';

class AccountPostsCollabsSection extends StatelessWidget {
  const AccountPostsCollabsSection({super.key});

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
      itemBuilder: (context, index) => Container(
        color: CupertinoColors.systemRed,
        child: Center(child: Text('Collab $index')),
      ),
    );
    ;
  }
}
