import 'package:facebook_ui_clone/data/data.dart';
import 'package:facebook_ui_clone/screens/home_page.dart';
import 'package:facebook_ui_clone/widgets/custom_app_bar.dart';
import 'package:facebook_ui_clone/widgets/custom_tab_bar.dart';
import 'package:facebook_ui_clone/widgets/my_font.dart';
import 'package:facebook_ui_clone/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> screens = [
    const HomePage(),
    const Scaffold(
      body: Center(child: MyFont(title: "Upcoming")),
    ),
    const Scaffold(
      body: Center(child: MyFont(title: "Upcoming")),
    ),
    const Scaffold(
      body: Center(child: MyFont(title: "Upcoming")),
    ),
    const Scaffold(
      body: Center(child: MyFont(title: "Upcoming")),
    ),
  ];

  final List<IconData> icons = [
    Iconsax.home5,
    Icons.ondemand_video,
    Iconsax.profile_2user,
    Iconsax.notification,
    Iconsax.setting,
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
        length: icons.length,
        child: Scaffold(
          appBar: Responsive.isDesktop(context)
              ? PreferredSize(
                  preferredSize: Size(screenSize.width, 100),
                  child: CustomAppBar(
                      currentUser: currentUser,
                      icons: icons,
                      selectedIndex: selectedIndex,
                      onTap: (index) => setState(() => selectedIndex = index)))
              : null,
          body: IndexedStack(index: selectedIndex, children: screens),
          bottomNavigationBar: !Responsive.isDesktop(context)
              ? CustomTabBar(
                  icons: icons,
                  selectedIndex: selectedIndex,
                  onTap: (index) => setState(() => selectedIndex = index),
                )
              : const SizedBox.shrink(),
        ));
  }
}
