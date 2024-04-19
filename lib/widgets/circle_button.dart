import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  final double iconSize;

  const CircleButton(
      {super.key, required this.icon, this.onPressed, required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
      child: Center(
        child: Icon(
          icon,
          size: iconSize,
          color: Colors.black,
        ),
      ),
    );
  }
}
