import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_clone_fixed/important_functions/image_related_functions.dart';

class SingleShowNitificationWidget extends StatefulWidget {
  const SingleShowNitificationWidget({super.key});

  @override
  State<SingleShowNitificationWidget> createState() =>
      _SingleShowNitificationWidgetState();
}

class _SingleShowNitificationWidgetState
    extends State<SingleShowNitificationWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      leadingSize: 50,
      leading: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(10),
        clipBehavior: Clip.antiAlias,
        child: ImageRelatedFunctions.getImage(
          "https://avatars.githubusercontent.com/u/149824520?v=4",
        ),
      ),
      title: Text.rich(
        softWrap: true,
        maxLines: 3,
        TextSpan(
          children: [
            TextSpan(
              text:
                  "tamimmusfik"
                  " ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "added a video to their story",
              style: TextStyle(fontWeight: FontWeight.w100, fontSize: 13),
            ),
          ],
        ),
      ),
      trailing: Container(
        width: 50,
        height: 50,
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(10),
          clipBehavior: Clip.antiAlias,
          child: ImageRelatedFunctions.getImage(
            "https://avatars.githubusercontent.com/u/149824520?v=4",
          ),
        ),
      ),
    );
  }
}
