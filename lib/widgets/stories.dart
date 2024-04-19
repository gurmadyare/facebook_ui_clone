import 'package:facebook_ui_clone/models/story_model.dart';
import 'package:facebook_ui_clone/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final List<Story> stories;
  const Stories({
    super.key,
    required this.stories,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 200,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(stories[index].imageUrl),
                          fit: BoxFit.fitHeight),
                      boxShadow: Responsive.isDesktop(context)
                          ? const [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 2),
                                  blurRadius: 4)
                            ]
                          : null)),
              Positioned(
                top: index != 0 ? 3 : 110,
                left: index == 0 ? 40 : 6,
                child: Container(
                    height: 45,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == 0 ? Colors.blue : null,
                    ),
                    child: index != 0
                        ? CircleAvatar(
                            minRadius: 32,
                            backgroundColor: stories[index].isViewed != true
                                ? Colors.blue
                                : Colors.grey,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(stories[index].user.imageUrl),
                            ),
                          )
                        : const Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
              ),

              //names
              Positioned(
                  bottom: index != 0 ? 10 : 4,
                  right: 0,
                  left: 20,
                  child: Text(
                    index == 0
                        ? "    Create\n     story"
                        : stories[index].user.name,
                    style: TextStyle(
                        letterSpacing: index != 0 ? 1 : 1.4,
                        color: index != 0 ? Colors.white : Colors.orangeAccent,
                        height: index == 0 ? 1 : 1,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                  )),
            ],
          );
        },
      ),
    );
  }
}
