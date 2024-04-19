import 'package:facebook_ui_clone/models/user_model.dart';
import 'package:facebook_ui_clone/widgets/circle_avtor.dart';
import 'package:facebook_ui_clone/widgets/my_font.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyCircleAvator(imageUrl: user.imageUrl),
        const SizedBox(width: 10),
        MyFont(
          title: user.name,
          size: 16,
        )
      ],
    );
  }
}
