import 'package:flutter/cupertino.dart';
import 'package:insta_clone_fixed/pages/tabs/AccountWidget/account_info.dart';
import 'package:insta_clone_fixed/pages/tabs/AccountWidget/account_navigation_bar.dart';
import 'package:insta_clone_fixed/pages/tabs/AccountWidget/account_posts_section.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: Accountnavigationbar.accountnavigationbar(context),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Accountinfo.accountinfo(context),
            Accountinfo.accountBioInfo(context),
            AccountPostsSection(),
          ],
        ),
      ),
    );
  }
}
