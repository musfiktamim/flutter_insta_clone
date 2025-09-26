import 'package:flutter/cupertino.dart';
import 'package:insta_clone_fixed/routes/my_route_path.dart';
import 'package:insta_clone_fixed/pages/auth/sign_in_page.dart';
import 'package:insta_clone_fixed/pages/auth/sign_up_page.dart';
import 'package:insta_clone_fixed/pages/tabs/account_page.dart';
import 'package:insta_clone_fixed/pages/tabs/create_page.dart';
import 'package:insta_clone_fixed/pages/tabs/home_page.dart';
import 'package:insta_clone_fixed/pages/tabs/main_page.dart';
import 'package:insta_clone_fixed/pages/tabs/reels_page.dart';
import 'package:insta_clone_fixed/pages/tabs/search_page.dart';
import 'package:insta_clone_fixed/pages/top/message_page.dart';
import 'package:insta_clone_fixed/pages/top/notifications_page.dart';

class Myroute {
  static Map<String, WidgetBuilder> myroutes(BuildContext context) {
    return {
      // tab
      Myroutepath.initroute: (context) => MainPage(),
      Myroutepath.homeroute: (context) => HomePage(),
      Myroutepath.searchroute: (context) => SearchPage(),
      Myroutepath.createroute: (context) => CreatePage(),
      Myroutepath.reelsroute: (context) => ReelsPage(),
      Myroutepath.accountroute: (context) => AccountPage(),

      // stack -> auth
      Myroutepath.signinroute: (context) => Signinpage(),
      Myroutepath.signuproute: (context) => Signuppage(),

      // stack -> top_routes;
      Myroutepath.notificationroute: (context) => NotificationsPage(),
      Myroutepath.messageroute: (context) => MessagePage(),
      // stack -> settings
    };
  }
}
