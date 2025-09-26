import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_clone_fixed/pages/top/message_page.dart';
import 'package:insta_clone_fixed/pages/top/notifications_page.dart';

class HomeNavigationBar {
  static CupertinoNavigationBar homenavigationbar(BuildContext context) {
    return CupertinoNavigationBar(
      middle: Text(
        "Instagram",
        style: TextStyle(fontFamily: GoogleFonts.dancingScript().fontFamily),
        textScaler: TextScaler.linear(1.5),
      ),
      leading: Icon(Icons.camera_alt_rounded, size: 25),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
          GestureDetector(
            child: Icon(Icons.favorite_outline, size: 25),
            onTap: () => Navigator.of(context).push(
              CupertinoPageRoute(builder: (context) => NotificationsPage()),
            ),
          ),
          GestureDetector(
            child: Icon(Icons.send_rounded, size: 25),
            onTap: () => Navigator.of(
              context,
            ).push(CupertinoPageRoute(builder: (context) => MessagePage())),
          ),
        ],
      ),
    );
  }
}
