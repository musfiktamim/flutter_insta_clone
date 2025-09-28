import 'package:flutter/cupertino.dart';
import 'package:insta_clone_fixed/important_functions/image_related_functions.dart';
import 'package:insta_clone_fixed/pages/top/notifications_widget/single_show_nitification_widget.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text("Notfications")),
      child: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList.builder(
              itemBuilder: (context, index) => SingleShowNitificationWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
