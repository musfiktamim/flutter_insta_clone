import 'package:flutter/cupertino.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({super.key});

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: CupertinoColors.activeGreen,
        child: Center(child: Text("Reel 1", textScaler: TextScaler.linear(3))),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: CupertinoColors.activeOrange,
        child: Center(child: Text("Reel 2", textScaler: TextScaler.linear(3))),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: CupertinoColors.activeBlue,
        child: Center(child: Text("Reel 3", textScaler: TextScaler.linear(3))),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: CupertinoColors.systemGrey2,
        child: Center(child: Text("Reel 4", textScaler: TextScaler.linear(3))),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: CupertinoColors.destructiveRed,
        child: Center(child: Text("Reel 5", textScaler: TextScaler.linear(3))),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: CupertinoColors.systemCyan,
        child: Center(child: Text("Reel 6", textScaler: TextScaler.linear(3))),
      ),
    ];
    return SafeArea(
      child: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        children: pages,
      ),
    );
  }
}
