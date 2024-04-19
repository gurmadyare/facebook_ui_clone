import 'package:facebook_ui_clone/constants/palette.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;
  const CustomTabBar(
      {super.key,
      required this.icons,
      required this.selectedIndex,
      required this.onTap,
      this.isBottomIndicator = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TabBar(
        indicator: BoxDecoration(
            border: isBottomIndicator
                ? const Border(
                    bottom: BorderSide(
                    color: Palette.facebookBlue,
                    width: 3,
                  ))
                : const Border(
                    top: BorderSide(
                    color: Palette.facebookBlue,
                    width: 3,
                  ))),
        tabs: icons
            .asMap()
            .map((c, e) => MapEntry(
                c,
                Tab(
                  icon: Icon(
                    e,
                    size: 30,
                    color: selectedIndex == c
                        ? Palette.facebookBlue
                        : Colors.black45,
                  ),
                )))
            .values
            .toList(),
        onTap: onTap,
      ),
    );
  }
}
