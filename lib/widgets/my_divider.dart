import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const MyDivider(
      {super.key,
      this.width = double.infinity,
      required this.height,
      this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: color),
    );
  }
}
