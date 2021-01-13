import 'package:flutter/material.dart';

class Story {
  final ImageProvider img;
  final bool newPost;

  Story({this.img, this.newPost});
}

List<Story> storys = [
  Story(
    img: AssetImage('assets/images/cat1.png'),
    newPost: false,
  ),
  Story(
    img: AssetImage('assets/images/cat1.png'),
    newPost: false,
  ),
  Story(
    img: AssetImage('assets/images/cat1.png'),
    newPost: true,
  ),
  Story(
    img: AssetImage('assets/images/cat1.png'),
    newPost: true,
  ),
  Story(
    img: AssetImage('assets/images/cat1.png'),
    newPost: false,
  ),
  Story(
    img: AssetImage('assets/images/cat1.png'),
    newPost: true,
  ),
  Story(
    img: AssetImage('assets/images/cat1.png'),
    newPost: false,
  ),
];

class Post {
  final ImageProvider img;
  final String name;
  final ImageProvider avatar;

  Post({this.img, this.name, this.avatar});
}

List<Post> posts = [
  Post(
    img: AssetImage('assets/images/cat1.png'),
    name: 'Jakob_Owens',
    avatar: AssetImage('assets/images/cat1.png'),
  ),
  Post(
    img: AssetImage('assets/images/cat1.png'),
    name: 'Peter_Range',
    avatar: AssetImage('assets/images/cat1.png'),
  ),
  Post(
    img: AssetImage('assets/images/cat1.png'),
    name: 'Jakob_Owens',
    avatar: AssetImage('assets/images/cat1.png'),
  ),
  Post(
    img: AssetImage('assets/images/cat1.png'),
    name: 'Jakob_Owens',
    avatar: AssetImage('assets/images/cat1.png'),
  ),
  Post(
    img: AssetImage('assets/images/cat1.png'),
    name: 'Peter_Range',
    avatar: AssetImage('assets/images/cat1.png'),
  ),
  Post(
    img: AssetImage('assets/images/cat1.png'),
    name: 'SmartFox',
    avatar: AssetImage('assets/images/cat1.png'),
  ),
];

const String kLogo = 'assets/logo.png';
const String kCamera = 'assets/camera.png';
const String kLive = 'assets/live.png';
const String kDm = 'assets/dm.png';
const Color kBackGroundColor = Color(0xff272936);
const Color kForGroundColor = Color(0xff3d3f50);
