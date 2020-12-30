import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:Paws/AdoptScreen/adopt.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Hi, Human",
                    style: TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold, height: 1.5),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "You can help me,right? there are many ways to help",
                    style: TextStyle(
                        fontSize: 15, height: 1.5, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    width: double.infinity,
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Container(
                              height: 80,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffFF6B81),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 80, right: 10),
                                    child: Text(
                                      "lolo is sad, make her happy",
                                      style: TextStyle(
                                          fontSize: 15,
                                          height: 1.5,
                                          color: Colors.white),
                                    )),
                              )),
                        ),
                        Container(
                          child: Image.asset("assets/images/lolo_dog.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("options".toUpperCase(),
                          style: TextStyle(fontSize: 17)),
                      Text(
                        "See All",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 30, bottom: 30),
                          child: Container(
                            height: MediaQuery.of(context).size.height - 400,
                            width: MediaQuery.of(context).size.width - 110,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              color: Colors.white,
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
                                          Spacer(),
                                          Container(
                                            height: 145,
                                            width: double.infinity,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(30.0),
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
                                                                    .circular(
                                                                        16),
                                                                bottomLeft: Radius
                                                                    .circular(
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
                                                    color:
                                                        Colors.deepPurple[50],
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
                                                    color:
                                                        Colors.deepPurple[50],
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
                                                                      .circular(
                                                                          16),
                                                                  bottomRight:
                                                                      Radius.circular(
                                                                          16)))),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 20,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      12.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
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
                                                        style: TextStyle(
                                                            fontSize: 13),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 32,
                                                          top: 12,
                                                          bottom: 12,
                                                          right: 16),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xffFF6B81),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16)),
                                                    child: FlatButton(
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
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
                        //////////////////////////////////////////////////////////////////////////////////////////
                        Padding(
                          padding: const EdgeInsets.only(right: 30, bottom: 30),
                          child: Container(
                            height: MediaQuery.of(context).size.height - 400,
                            width: MediaQuery.of(context).size.width - 100,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              color: Colors.white,
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
                                          Spacer(),
                                          Container(
                                            height: 145,
                                            width: double.infinity,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(30.0),
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
                                                                    .circular(
                                                                        16),
                                                                bottomLeft: Radius
                                                                    .circular(
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
                                                    color:
                                                        Colors.deepPurple[50],
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
                                                    color:
                                                        Colors.deepPurple[50],
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
                                                                      .circular(
                                                                          16),
                                                                  bottomRight:
                                                                      Radius.circular(
                                                                          16)))),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 20,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      12.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
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
                                                        style: TextStyle(
                                                            fontSize: 13),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 32,
                                                          top: 12,
                                                          bottom: 12,
                                                          right: 16),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xffFF6B81),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16)),
                                                    child: FlatButton(
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
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
                          padding: const EdgeInsets.only(right: 30, bottom: 30),
                          child: Container(
                            height: MediaQuery.of(context).size.height - 400,
                            width: MediaQuery.of(context).size.width - 100,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              color: Colors.white,
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
                                          Spacer(),
                                          Container(
                                            height: 145,
                                            width: double.infinity,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(30.0),
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
                                                                    .circular(
                                                                        16),
                                                                bottomLeft: Radius
                                                                    .circular(
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
                                                    color:
                                                        Colors.deepPurple[50],
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
                                                    color:
                                                        Colors.deepPurple[50],
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
                                                                      .circular(
                                                                          16),
                                                                  bottomRight:
                                                                      Radius.circular(
                                                                          16)))),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 20,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      12.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
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
                                                        style: TextStyle(
                                                            fontSize: 13),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 32,
                                                          top: 12,
                                                          bottom: 12,
                                                          right: 16),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xffFF6B81),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16)),
                                                    child: FlatButton(
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
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
                      ],
                    ),
                  )
                ],
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
