import 'package:flutter/cupertino.dart';

class MessagesTitleWidget extends StatelessWidget {
  const MessagesTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Messages",
              textScaler: TextScaler.linear(1.3),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Requests",
              style: TextStyle(color: CupertinoColors.systemCyan),
              textScaler: TextScaler.linear(1.1),
            ),
          ],
        ),
      ),
    );
  }
}
