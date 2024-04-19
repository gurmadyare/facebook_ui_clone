import 'package:facebook_ui_clone/constants/palette.dart';
import 'package:facebook_ui_clone/models/user_model.dart';
import 'package:facebook_ui_clone/widgets/circle_avtor.dart';
import 'package:facebook_ui_clone/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;
  const Rooms({super.key, required this.onlineUsers});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);

    return Card(
      elevation: isDesktop ? 1 : 0,
      child: Container(
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: isDesktop ? BorderRadius.circular(10) : null),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: onlineUsers.length,
              itemBuilder: (context, index) {
                return index == 0
                    ? const _CreateRoomButton()
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: MyCircleAvator(
                                  imageUrl: onlineUsers[index].imageUrl),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 2,
                              child: Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Palette.online,
                                      border: Border.all(
                                          color: Colors.white, width: 1.5))),
                            )
                          ],
                        ),
                      );
              })),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              side: BorderSide(color: Colors.blueAccent.shade100, width: 3)),
          child: Row(
            children: [
              ShaderMask(
                shaderCallback: (rect) =>
                    Palette.createRoomGradient.createShader(rect),
                child: const Icon(
                  Icons.video_call,
                  size: 35,
                ),
              ),
              const Text(
                "  Create\n  Room",
                style: TextStyle(
                    color: Palette.facebookBlue,
                    height: 1,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }
}
