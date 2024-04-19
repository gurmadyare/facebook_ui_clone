import 'package:flutter/material.dart';

class MyFont extends StatelessWidget {
  final String title;
  final double size;
  final Color color;
  final FontWeight fontWeight;
  const MyFont(
      {super.key,
      required this.title,
      this.size = 18,
      this.color = Colors.black,
      this.fontWeight = FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
