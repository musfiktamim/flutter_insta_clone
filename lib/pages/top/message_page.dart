import 'package:flutter/cupertino.dart';
import 'package:insta_clone_fixed/pages/tabs/home_widget/home_sotry_section_widget.dart';
import 'package:insta_clone_fixed/pages/top/messages_widget/messages_title_widget.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("tamimmusfik"),
        trailing: Icon(CupertinoIcons.square_pencil),
      ),
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: HomeSotrySectionWidget()),
            SliverToBoxAdapter(child: MessagesTitleWidget()),
          ],
        ),
      ),
    );
  }
}
