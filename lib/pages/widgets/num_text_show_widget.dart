import 'package:flutter/cupertino.dart';

class NumTextShowWidget extends StatelessWidget {
  final num number;
  final String label;
  const NumTextShowWidget({
    super.key,
    required this.number,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        text: "${number.toString()}\n",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        children: [
          TextSpan(
            text: label,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 15,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
  }
}
