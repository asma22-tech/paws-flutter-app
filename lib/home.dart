import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:Paws/AdoptScreen/adopt.dart';


class Dashboardpage extends StatefulWidget {
  @override
  _DashboardpageState createState() => _DashboardpageState();
}

class _DashboardpageState extends State<Dashboardpage>
    with TickerProviderStateMixin {
  AnimationController animationController;
  double _topBarHeight = 0.0;

  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _scrollController = ScrollController()
      ..addListener(() {
        print(_scrollController.offset);
        if (_scrollController.offset != 0.0) {
          setState(() {
            _topBarHeight = 94;
          });
        } else if (_scrollController.offset == 0.0) {
          setState(() {
            _topBarHeight = 0.0;
          });
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    Container(
                      height: 126,
                      decoration: BoxDecoration(
                          color: Color(0xffF4E3E3),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(36),
                            bottomLeft: Radius.circular(36),
                          )),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 8,
                            top: 1,
                            child: CircleAvatar(
                              backgroundColor: Color(0xffF4E3E3),
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  "https://avatars0.githubusercontent.com/u/19484515?s=460&u=0ec7b31ff9129826cccc5cd971887a9dd0e0a538&v=4"),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            top: 5,
                            bottom: 0,
                            right: 24,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi Human",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff2F3542),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "What are we learning today?",
                                  style: TextStyle(
                                      color: Color(0xff2F3542), fontSize: 15),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 1),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Search locarion"),
                                            ),
                                          ),
                                          flex: 12,
                                        ),
                                        Expanded(
                                            flex: 3,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 8),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Center(
                                                  child: Icon(Icons.search),
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height - 350,
                        width: MediaQuery.of(context).size.width - 24,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          elevation: 24,
                          color: Colors.white,
                          shadowColor: Colors.pink[50],
                          child: Column(
                            children: [
                              Expanded(
                                flex: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(24),
                                        topLeft: Radius.circular(24)),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.white,
                                        Colors.pink[50],
                                      ],
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Spacer(),
                                      Text(
                                        "Adopt",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Adopt Animals",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 153,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.all(30.0),
                                          child: Image(
                                            image: AssetImage(
                                              'assets/images/3.png',
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 20),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(16),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    16))),
                                              ),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                color: Colors.white,
                                              )),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                color: Colors.deepPurple[50],
                                              )),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                color: Colors.deepPurple[50],
                                              )),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                color: Colors.white,
                                              )),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                color: Colors.white,
                                              )),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(16),
                                                              bottomRight: Radius
                                                                  .circular(
                                                                      16)))),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 8,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "see animals",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  Text(
                                                    "avaiblale",
                                                    style:
                                                        TextStyle(fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 32,
                                                  top: 12,
                                                  bottom: 12,
                                                  right: 16),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xffFF6B81),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                child: FlatButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                        return AdoptScrean();
                                                      }),
                                                    );
                                                  },
                                                  child: Center(
                                                    child: Text(
                                                      "Adopt",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height - 350,
                        width: MediaQuery.of(context).size.width - 24,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          elevation: 24,
                          color: Colors.white,
                          shadowColor: Colors.pink[50],
                          child: Column(
                            children: [
                              Expanded(
                                flex: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(24),
                                        topLeft: Radius.circular(24)),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.white,
                                        Colors.pink[50],
                                      ],
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Spacer(),
                                      Text(
                                        "Donate",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "help shelters",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 153,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.all(30.0),
                                          child: Image(
                                            image: AssetImage(
                                              'assets/images/3.png',
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 20),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(16),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    16))),
                                              ),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                color: Colors.white,
                                              )),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                color: Colors.deepPurple[50],
                                              )),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                color: Colors.deepPurple[50],
                                              )),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                color: Colors.white,
                                              )),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                color: Colors.white,
                                              )),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(16),
                                                              bottomRight: Radius
                                                                  .circular(
                                                                      16)))),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 8,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "see shelters",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  Text(
                                                    "for donation",
                                                    style:
                                                        TextStyle(fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 32,
                                                  top: 12,
                                                  bottom: 12,
                                                  right: 16),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xffFF6B81),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                child: FlatButton(
                                                  onPressed: () {
                                                    print('hello');
                                                  },
                                                  child: Center(
                                                    child: Text(
                                                      "Donate",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height - 350,
                        width: MediaQuery.of(context).size.width - 24,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          elevation: 24,
                          color: Colors.white,
                          shadowColor: Color(0xF4E3E3),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(24),
                                          topLeft: Radius.circular(24)),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.white,
                                            Colors.pink[50],
                                          ])),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Spacer(),
                                      Text(
                                        "Stray",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "report a stray animale",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 153,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.all(30.0),
                                          child: Image(
                                            image: AssetImage(
                                              'assets/images/1.png',
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 20),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(16),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    16))),
                                              ),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                color: Colors.white,
                                              )),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                color: Colors.white,
                                              )),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                color: Colors.white,
                                              )),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                color: Colors.white,
                                              )),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                color: Colors.white,
                                              )),
                                            ),
                                            VerticalDivider(
                                              width: 2,
                                              thickness: 0,
                                              color: Colors.white,
                                            ),
                                            Expanded(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(16),
                                                              bottomRight: Radius
                                                                  .circular(
                                                                      16)))),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 8,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "report seeing ",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  Text(
                                                    "stary",
                                                    style:
                                                        TextStyle(fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 32,
                                                  top: 12,
                                                  bottom: 12,
                                                  right: 16),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xffFF6B81),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                child: FlatButton(
                                                  onPressed: () {
                                                    print('hello');
                                                  },
                                                  child: Center(
                                                    child: Text(
                                                      "Report",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xffF4E3E3),
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.white,
        height: 50,
        items: [
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.favorite, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        index: 0,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceIn,
        onTap: (index) {},
      ),
    );
  }
}
