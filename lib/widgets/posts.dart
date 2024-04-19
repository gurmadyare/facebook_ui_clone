import 'package:facebook_ui_clone/models/post_model.dart';
import 'package:facebook_ui_clone/widgets/circle_avtor.dart';
import 'package:facebook_ui_clone/widgets/my_font.dart';
import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  final List<Post> posts;
  final int index;
  const Posts({
    super.key,
    required this.posts,
    required this.index,
  });

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyCircleAvator(
                    imageUrl: widget.posts[widget.index].user.imageUrl),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyFont(
                        title: widget.posts[widget.index].user.name,
                        fontWeight: FontWeight.w500,
                      ),
                      Row(
                        children: [
                          MyFont(
                            title: "${widget.posts[widget.index].timeAgo} . ",
                            color: Colors.black54,
                            fontWeight: FontWeight.w300,
                            size: 14,
                          ),
                          const Icon(
                            Icons.public,
                            color: Colors.black54,
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: MyFont(
              title: widget.posts[widget.index].caption,
              fontWeight: FontWeight.w400,
              size: 14,
            ),
          ),
          const SizedBox(height: 10),

          //post
          Image.asset(
            widget.posts[widget.index].imageUrl,
            fit: BoxFit.fill,
            width: double.infinity,
            height: 300,
          ),
          const SizedBox(height: 10),

          //likes comments shares
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                      child: const Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                    const SizedBox(width: 3),
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    Image.asset(
                      "assets/images/wow.png",
                      width: 18,
                    ),
                    MyFont(
                      title: "  ${widget.posts[widget.index].likes}",
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      size: 14,
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyFont(
                      title: "${widget.posts[widget.index].comments} comments",
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      size: 14,
                    ),
                    const SizedBox(width: 10),
                    MyFont(
                      title: "${widget.posts[widget.index].shares} shares",
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      size: 14,
                    ),
                  ],
                ),
              ],
            ),
          ),

          //like comment share
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 15),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        // isLiked ?  widget.posts[widget.index].likes-- : widget.likes++;
                        isLiked = !isLiked;
                      });
                    },
                    icon: Icon(
                      isLiked
                          ? Icons.thumb_up_alt
                          : Icons.thumb_up_alt_outlined,
                      color: isLiked ? Colors.blue.shade800 : Colors.black54,
                    ),
                  ),
                  const MyFont(
                    title: "Like",
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 15),
                  Image.asset("assets/images/comment.png", width: 20),
                  const MyFont(
                    title: "  Comment",
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 15),
                  Image.asset(
                    "assets/images/arrow.png",
                    width: 25,
                  ),
                  const MyFont(
                    title: "  Share",
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
