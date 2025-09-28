import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoNavigationBar searchnavigationbar(BuildContext context) {
  return CupertinoNavigationBar(
    middle: CupertinoTextField.borderless(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          color: CupertinoColors.secondarySystemBackground,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsetsGeometry.only(left: 20, top: 6, bottom: 6, right: 2),
    ),
    trailing: GestureDetector(
      child: Icon(
        Icons.search_rounded,
        color: CupertinoColors.secondarySystemBackground,
      ),
    ),
  );
}
