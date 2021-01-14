import 'package:flutter/material.dart';
import 'package:Paws/thread/cofigure.dart';

class Thread extends StatefulWidget {
  @override
  _ThreadState createState() => _ThreadState();
}

class _ThreadState extends State<Thread> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Column(
            children: <Widget>[
              CustomHeader(),
              PostsView(),
            ],
          ),
        ],
      ),
    );
  }
}

class PostsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(bottom: 100),
        itemCount: posts.length,
        itemBuilder: (context, index) => Post(
          img: posts[index].img,
          name: posts[index].name,
          avatar: posts[index].avatar,
        ),
      ),
    );
  }
}

class Post extends StatelessWidget {
  final ImageProvider img;
  final String name;
  final ImageProvider avatar;

  const Post({this.img, this.name, this.avatar});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      height: 450,
      decoration: BoxDecoration(
        color: kForGroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(radius: 18, backgroundImage: avatar),
              SizedBox(width: 10),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Icon(Icons.more_horiz)
            ],
          ),
          Container(
            height: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(fit: BoxFit.cover, image: img),
            ),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.favorite, color: Colors.redAccent),
              Text(
                '1.245',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 20),
              Icon(Icons.chat_bubble_outline),
              Text(
                ' 54',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Icon(Icons.bookmark_border),
            ],
          )
        ],
      ),
    );
  }
}

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      color: kForGroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      kCamera,
                      width: 35,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Image.asset(kLogo),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Image.asset(kLive, width: 35),
                      Image.asset(kDm, width: 35),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
