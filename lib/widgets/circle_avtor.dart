import 'package:flutter/material.dart';

class MyCircleAvator extends StatelessWidget {
  final String imageUrl;
  const MyCircleAvator({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(imageUrl),
      radius: 25,
      backgroundColor: Colors.grey[200],
    );
  }
}
