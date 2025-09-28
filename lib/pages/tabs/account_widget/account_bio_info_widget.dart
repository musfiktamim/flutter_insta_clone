import 'package:flutter/cupertino.dart';

class AccountBioInfoWidget extends StatelessWidget {
  const AccountBioInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5),
        Text(
          "Account Type",
          style: TextStyle(color: CupertinoColors.inactiveGray),
          textScaler: TextScaler.linear(1.1),
        ),
        Text(
          "This is the bio asd asd asd asd asd asd as d asd",
          style: TextStyle(
            color: CupertinoColors.extraLightBackgroundGray,
            height: 1,
          ),
          textScaler: TextScaler.linear(0.9),
        ),
        SizedBox(height: 5),
        Text(
          "This is link",
          style: TextStyle(
            color: CupertinoColors.extraLightBackgroundGray,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
          textScaler: TextScaler.linear(1),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CupertinoButton.filled(
              onPressed: () {},
              sizeStyle: CupertinoButtonSize.medium,
              minimumSize: Size(MediaQuery.of(context).size.width / 2.1, 15),
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(255, 65, 63, 63),
              child: Text("Edit Profile"),
            ),
            CupertinoButton.filled(
              onPressed: () {},
              sizeStyle: CupertinoButtonSize.medium,
              minimumSize: Size(MediaQuery.of(context).size.width / 2.1, 15),
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(255, 65, 63, 63),
              child: Text("Share Profile"),
            ),
          ],
        ),
      ],
    );
  }
}
