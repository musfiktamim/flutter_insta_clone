import 'package:flutter/cupertino.dart';
import 'package:insta_clone_fixed/important_functions/image_related_functions.dart';
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
            SliverList.builder(
              itemBuilder: (context, index) => CupertinoListTile(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                leadingSize: 60,
                leading: ClipOval(
                  child: ImageRelatedFunctions.getImage(
                    "https://avatars.githubusercontent.com/u/149824520?v=4",
                  ),
                ),
                title: Text("Musfikur Rahman", maxLines: 1),
                subtitle: Text("Hey whatsup bro 🚎", maxLines: 2),
                trailing: Icon(CupertinoIcons.camera),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
