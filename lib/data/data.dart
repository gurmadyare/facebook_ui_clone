import 'package:facebook_ui_clone/models/post_model.dart';
import 'package:facebook_ui_clone/models/story_model.dart';
import 'package:facebook_ui_clone/models/user_model.dart';

const User currentUser = User(
  name: 'John Wick',
  imageUrl: "assets/images/profile_9.jpg",
);

final List<User> onlineUsers = [
  const User(
    name: 'Maria Dave',
    imageUrl: "assets/images/profile_10.jpg",
  ),
  const User(
    name: 'Jesica Doe',
    imageUrl: "assets/images/profile_5.jpg",
  ),
  const User(
    name: 'Matthew Hinkle',
    imageUrl: "assets/images/profile_6.jpg",
  ),
  const User(
    name: 'Amy Smith',
    imageUrl: "assets/images/profile_1.jpg",
  ),
  const User(
    name: 'Jessie Samson',
    imageUrl: "assets/images/profile_5.jpg",
  ),
  const User(
    name: 'Carolyn Duncan',
    imageUrl: "assets/images/profile_2.jpg",
  ),
  const User(
    name: 'Paul Pinnock',
    imageUrl: 'assets/images/profile_3.jpg',
  ),
  const User(
    name: 'Elizabeth Wong',
    imageUrl: "assets/images/profile_7.jpg",
  ),
  const User(
    name: 'James Lathrop',
    imageUrl: "assets/images/profile_6.jpg",
  ),
  const User(
    name: 'Ed Morris',
    imageUrl: "assets/images/images.jpeg",
  ),
  const User(
    name: 'David Brooks',
    imageUrl: "assets/images/profile_8.jpg",
  ),
  const User(
    name: 'Jane Doe',
    imageUrl: "assets/images/profile-image-removebg-preview.png",
  ),
];

final List<Story> stories = [
  const Story(
      user: currentUser,
      imageUrl: "assets/images/profile_9.jpg",
      isViewed: false),
  Story(
      user: onlineUsers[1],
      imageUrl: "assets/images/gulshan_kumar.jpg",
      isViewed: false),
  Story(
    user: onlineUsers[9],
    imageUrl: "assets/images/profile_4.jpg",
    isViewed: true,
  ),
  Story(
    user: onlineUsers[7],
    imageUrl: "assets/images/profile_10.jpg",
  ),
  Story(
    user: onlineUsers[6],
    imageUrl: "assets/images/spa-beach-hotel.jpg",
    isViewed: true,
  ),
  Story(
    user: onlineUsers[3],
    imageUrl: "assets/images/saopaulo.jpg",
  ),
  Story(user: onlineUsers[4], imageUrl: "assets/images/fadhiga.webp"),
  Story(
    user: onlineUsers[6],
    imageUrl: "assets/images/images.jpeg",
    isViewed: true,
  ),
  Story(
    user: onlineUsers[5],
    imageUrl: "assets/images/exclusive hotel.jpg",
  ),
  Story(
    user: onlineUsers[2],
    imageUrl: "assets/images/profile_7.jpg",
  ),
  Story(
    user: onlineUsers[8],
    imageUrl: "assets/images/newyork2.jpg",
    isViewed: true,
  ),
];

List<Post> posts = [
  Post(
    user: onlineUsers[9],
    caption: 'Cute couple Parrots!.',
    timeAgo: '1d',
    imageUrl: "assets/images/images.jpeg",
    likes: 1523,
    shares: 129,
    comments: 301,
  ),
  const Post(
    user: currentUser,
    caption: 'At Eiffel tower, Paris is an amazing tour',
    timeAgo: '58m',
    imageUrl: "assets/images/paris02.jpg",
    likes: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    user: onlineUsers[5],
    caption: 'Steampunk style hotel, guess the name of this place,',
    timeAgo: '3hr',
    imageUrl: "assets/images/steampunk dubai.jpg",
    likes: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: onlineUsers[4],
    caption: 'This is a very good hotel.',
    timeAgo: '8hr',
    imageUrl: "assets/images/exclusive hotel.jpg",
    likes: 894,
    comments: 201,
    shares: 27,
  ),
  Post(
    user: onlineUsers[3],
    caption: 'Calm Enviroment! 🏔',
    timeAgo: '15hr',
    imageUrl: "assets/images/spa-beach-hotel.jpg",
    likes: 722,
    comments: 183,
    shares: 42,
  ),
  Post(
    user: onlineUsers[0],
    caption:
        'In the near future, all buildings in Scottland will be like this ',
    timeAgo: '1d',
    imageUrl: "assets/images/fadhiga.webp",
    likes: 482,
    comments: 37,
    shares: 9,
  ),
];
