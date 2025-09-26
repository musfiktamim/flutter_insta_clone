import 'package:flutter/cupertino.dart';
import 'package:insta_clone_fixed/pages/settings/main_setting_page.dart';

class Accountnavigationbar {
  static CupertinoNavigationBar accountnavigationbar(BuildContext context) {
    return CupertinoNavigationBar(
      leading: Text(
        "Musfikur Rahman",
        textScaler: TextScaler.linear(1.5),
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
          GestureDetector(child: Icon(CupertinoIcons.add_circled)),
          GestureDetector(
            child: Icon(CupertinoIcons.bars),
            onTap: () => Navigator.of(
              context,
            ).push(CupertinoPageRoute(builder: (context) => Mainsettingpage())),
          ),
        ],
      ),
    );
  }
}
