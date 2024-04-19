import 'package:facebook_ui_clone/constants/palette.dart';
import 'package:facebook_ui_clone/data/data.dart';
import 'package:facebook_ui_clone/widgets/circle_button.dart';
import 'package:facebook_ui_clone/widgets/contacts_list.dart';
import 'package:facebook_ui_clone/widgets/more_options_list.dart';
import 'package:facebook_ui_clone/widgets/my_font.dart';
import 'package:facebook_ui_clone/widgets/post_container.dart';
import 'package:facebook_ui_clone/widgets/posts.dart';
import 'package:facebook_ui_clone/widgets/responsive/responsive.dart';
import 'package:facebook_ui_clone/widgets/rooms.dart';
import 'package:facebook_ui_clone/widgets/stories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();

  @override
  void dispose() {
    // TODO: implement dispose
    _trackingScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Responsive(
              mobile: _HomeScreenMobile(
                  scrollController: _trackingScrollController),
              tablet: _HomeScreenMobile(
                scrollController: _trackingScrollController,
              ),
              desktop: _DesktopScreenMobile(
                  scrollController: _trackingScrollController))),
    );
  }
}

class _HomeScreenMobile extends StatelessWidget {
  final TrackingScrollController scrollController;
  const _HomeScreenMobile({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 15),
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
                floating: true,
                title: const MyFont(
                  title: "facebook",
                  color: Palette.facebookBlue,
                  size: 32,
                ),
                actions: [
                  const CircleButton(icon: Icons.search, iconSize: 32),
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.circle,
                    ),
                    child: Badge(
                      label: const Text('9+'),
                      child: Image.asset(
                        "assets/images/messenger_icon-removebg-preview.png",
                        width: 30,
                      ),
                    ),
                  ),
                ]),

            //whats on your mind
            const SliverToBoxAdapter(
                child: PostContainer(currentUser: currentUser)),

            //rooms
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 5),
              sliver: SliverToBoxAdapter(
                child: Rooms(onlineUsers: onlineUsers),
              ),
            ),

            //stories
            SliverPadding(
              padding: const EdgeInsets.only(top: 10),
              sliver: SliverToBoxAdapter(
                child: Stories(stories: stories),
              ),
            ),

            //posts
            SliverList.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return Posts(
                    posts: posts,
                    index: index,
                  );
                }),
          ],
        ));
  }
}

class _DesktopScreenMobile extends StatelessWidget {
  final TrackingScrollController scrollController;

  const _DesktopScreenMobile({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MoreOptionsList(currentUser: currentUser),
          ),
        ),
        const Spacer(),
        SizedBox(
          width: 600,
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              //stories
              SliverPadding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                sliver: SliverToBoxAdapter(
                  child: Stories(stories: stories),
                ),
              ),

              //whats on your mind
              const SliverToBoxAdapter(
                  child: PostContainer(currentUser: currentUser)),

              //rooms
              SliverToBoxAdapter(
                child: Rooms(onlineUsers: onlineUsers),
              ),

              //posts
              SliverList.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return Posts(
                      posts: posts,
                      index: index,
                    );
                  }),
            ],
          ),
        ),
        const Spacer(),
        Flexible(
          flex: 2,
          child: ContactsList(users: onlineUsers),
        ),
      ],
    );
  }
}
