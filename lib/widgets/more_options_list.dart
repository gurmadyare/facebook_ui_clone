import 'package:facebook_ui_clone/constants/palette.dart';
import 'package:facebook_ui_clone/models/user_model.dart';
import 'package:facebook_ui_clone/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MoreOptionsList extends StatelessWidget {
  final List<List> _moreOptionsList = [
    [Icons.shield_outlined, Colors.deepPurple, "COVID-19 Info center"],
    [Icons.supervisor_account_sharp, Colors.cyan, "Freinds"],
    [Icons.flag, Colors.orange, "Pages"],
    [Icons.storefront, Palette.facebookBlue, "Market place"],
    [Iconsax.message, Colors.deepPurple, "Messages"],
    [Icons.calendar_month, Colors.red, "Events"],
    [Icons.help, Colors.grey[600], "Help & Support"],
    [Icons.settings, Colors.pink, "Settings & Privancy"],
  ];

  final User currentUser;
  MoreOptionsList({super.key, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 280),
      child: ListView.builder(
        // +1 = userCard
        itemCount: 1 + _moreOptionsList.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 25),
              child: UserCard(user: currentUser),
            );
          }
          //return option (else) -> default length
          final List option = _moreOptionsList[index - 1];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Option(icon: option[0], color: option[1], label: option[2]),
          );
        },
      ),
    );
  }
}

class Option extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;
  const Option(
      {super.key,
      required this.icon,
      required this.color,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print(label),
      child: Row(
        children: [
          //icon
          Icon(icon, color: color, size: 38),

          //space
          const SizedBox(width: 15),

          //label
          Flexible(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        ],
      ),
    );
  }
}
