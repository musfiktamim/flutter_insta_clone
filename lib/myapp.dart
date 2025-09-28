import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_clone_fixed/routes/my_route.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      initialRoute: "/",
      routes: Myroute.myroutes(context),
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily),
        ),
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
