import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DarkInstagram extends StatefulWidget {
  @override
  _DarkInstagramState createState() => _DarkInstagramState();
}

class _DarkInstagramState extends State<DarkInstagram> {
  Future getData() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("Posts").get();
    return qn.docs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
          future: getData(),
          builder: (_, snapdhot) {
            return ListView.builder(
                itemCount: snapdhot.data.lenght,
                itemBuilder: (_, index) {
                  DocumentSnapshot data = snapdhot.data[index];
                  return Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: 160,
                            color: Color(0xffF4E3E3),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Image.asset(
                                            'assets/images/cat1.png',
                                            width: 35,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: Image.asset(
                                              'assets/images/cat1.png'),
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            Image.asset(
                                                'assets/images/cat1.png',
                                                width: 35),
                                            Image.asset(
                                                'assets/images/cat1.png',
                                                width: 35),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            padding: EdgeInsets.all(15),
                            height: 450,
                            decoration: BoxDecoration(
                              color: Color(0xffF4E3E3),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    CircleAvatar(
                                        radius: 18,
                                        backgroundImage: AssetImage(
                                            'assets/images/cat1.png')),
                                    SizedBox(width: 10),
                                    Text(
                                      "lol",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Spacer(),
                                    Icon(Icons.more_horiz)
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  child: Text(data["caption"]),
                                ),
                                Container(
                                  height: 330,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: data["mediaUrl"]),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.favorite,
                                        color: Colors.redAccent),
                                    Text(
                                      '1.245',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(width: 20),
                                    Icon(Icons.chat_bubble_outline),
                                    Text(
                                      ' 54',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Spacer(),
                                    Icon(Icons.bookmark_border),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
<<<<<<< HEAD
                  );
                });
          }),
=======
                  ),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image(
                        height: 60.0,
                        width: 60.0,
                        image: AssetImage(stories[index - 1]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          _buildPost(0),
          _buildPost(1),
        ],
      ),
>>>>>>> 2845e7b6f471edac1c6d0c36057b74d0904d4565
    );
  }
}
