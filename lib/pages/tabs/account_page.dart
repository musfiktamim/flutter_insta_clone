import 'package:flutter/cupertino.dart';
import 'package:insta_clone_fixed/pages/tabs/account_widget/account_info.dart';
import 'package:insta_clone_fixed/pages/tabs/account_widget/account_navigation_bar.dart';
import 'package:insta_clone_fixed/pages/tabs/account_widget/account_posts_section.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: Accountnavigationbar.accountnavigationbar(context),
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: Accountinfo.accountinfo(context)),
            SliverToBoxAdapter(child: Accountinfo.accountBioInfo(context)),
            SliverToBoxAdapter(child: AccountPostsSection()),
          ],
        ),
      ),
    );
  }
}
