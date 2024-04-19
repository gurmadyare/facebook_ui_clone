import 'package:facebook_ui_clone/models/user_model.dart';
import 'package:facebook_ui_clone/widgets/circle_avtor.dart';
import 'package:facebook_ui_clone/widgets/my_divider.dart';
import 'package:facebook_ui_clone/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final User currentUser;
  const PostContainer({super.key, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Card(
      elevation: isDesktop ? 1 : null,
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isDesktop ? BorderRadius.circular(10) : null,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyCircleAvator(imageUrl: currentUser.imageUrl),
                SizedBox(
                  width: isDesktop ? 350 : 270,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 10, left: 25),
                      hintText: "What's on your mind?",
                      hintStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.photo_library_rounded,
                  color: Colors.green.shade500,
                  size: 35,
                ),
              ],
            ),
            const SizedBox(height: 8),

            //dividor
            MyDivider(
              height: 3,
              width: double.infinity,
              color: Colors.grey.shade50,
            ),
          ],
        ),
      ),
    );
  }
}
