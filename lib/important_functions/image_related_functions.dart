import 'package:flutter/cupertino.dart';

class ImageRelatedFunctions {
  static ImageProvider getAvatar(String url) {
    if (const bool.fromEnvironment("FLUTTER_TEST")) {
      return const AssetImage("assets/dummy/placeholder.jpg");
    }
    return NetworkImage(url);
  }

  static Image getImage(
    String url, {
    Key? key,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    Color? color,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    if (const bool.fromEnvironment("FLUTTER_TEST")) {
      return Image.asset(
        "assets/dummy/placeholder.jpg",
        key: key,
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
        color: color,
        filterQuality: filterQuality,
      );
    }
    return Image.network(
      url,
      key: key,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      color: color,
      filterQuality: filterQuality,
    );
  }
}
