import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:Paws/AdoptScreen/animalslist.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:Paws/AdoptScreen/animaldetals.dart';

class Animal {
  String name;
  String scientificName;
  double age;
  String distanceToUser;
  bool isFemale;
  String imageUrl;
  Color backgroundColor;
  String statment;
  String ownername;

  Animal({
    this.name,
    this.scientificName,
    this.age,
    this.distanceToUser,
    this.isFemale,
    this.imageUrl,
    this.backgroundColor,
    this.statment,
    this.ownername,
  });
}

class AdoptScrean extends StatefulWidget {
  @override
  _AdoptScreanState createState() => _AdoptScreanState();
}

class _AdoptScreanState extends State<AdoptScrean>
    with TickerProviderStateMixin {
  int selectedAnimalIconIndex = 0;
  TabController _tabController;

  @override
  void initState() {
    // initialise your tab controller here
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFDCB6E),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 65.0,
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 42.4,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Discover",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff2F3542),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(24),
                            topLeft: Radius.circular(24)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                                EdgeInsets.only(top: 25, left: 10, right: 10),
                            child: Container(
                              height: 470,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 5),
                              child: DefaultTabController(
                                length: 5,
                                child: Column(
                                  children: <Widget>[
                                    ButtonsTabBar(
                                      radius: 20,
                                      backgroundColor: Color(0xffFF6B81),
                                      unselectedBackgroundColor:
                                          Colors.grey[100],
                                      unselectedLabelStyle:
                                          TextStyle(color: Color(0xff2F3542)),
                                      labelStyle: TextStyle(
                                          color: Colors.grey[100],
                                          fontWeight: FontWeight.bold),
                                      tabs: [
                                        Tab(
                                          icon: Icon(
                                            FontAwesomeIcons.cat,
                                            size: 30,
                                          ),
                                        ),
                                        Tab(
                                          icon: Icon(
                                            FontAwesomeIcons.dog,
                                            size: 30,
                                          ),
                                        ),
                                        Tab(icon: Icon(FontAwesomeIcons.crow)),
                                        Tab(icon: Icon(FontAwesomeIcons.fish)),
                                        Tab(icon: Icon(FontAwesomeIcons.frog)),
                                      ],
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: <Widget>[
                                          Center(
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: ListView.builder(
                                                      padding: EdgeInsets.only(
                                                        top: 10.0,
                                                      ),
                                                      itemCount: cats.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        final animal =
                                                            cats[index];

                                                        return GestureDetector(
                                                          onTap: () =>
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder: (_) =>
                                                                          AnimalsDetailsScreen(
                                                                            animal:
                                                                                animal,
                                                                          ))),
                                                          child: Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                              bottom: 10.0,
                                                              right: 10.0,
                                                              left: 10.0,
                                                            ),
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: <
                                                                  Widget>[
                                                                Material(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.0),
                                                                  elevation:
                                                                      4.0,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .symmetric(
                                                                      horizontal:
                                                                          20.0,
                                                                      vertical:
                                                                          20.0,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: <
                                                                          Widget>[
                                                                        SizedBox(
                                                                          width:
                                                                              deviceWidth * 0.4,
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: <Widget>[
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: <Widget>[
                                                                                  Text(
                                                                                    animal.name,
                                                                                    style: TextStyle(
                                                                                      fontSize: 26.0,
                                                                                      color: Color(0xff2F3542),
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                                  ),
                                                                                  Icon(
                                                                                    animal.isFemale ? FontAwesomeIcons.venus : FontAwesomeIcons.mars,
                                                                                    color: Color(0xff2F3542),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.0,
                                                                              ),
                                                                              Text(
                                                                                animal.scientificName,
                                                                                style: TextStyle(
                                                                                  fontSize: 16.0,
                                                                                  color: Color(0xff2F3542),
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.0,
                                                                              ),
                                                                              Text(
                                                                                '${animal.age} years old',
                                                                                style: TextStyle(
                                                                                  color: Color(0xff2F3542),
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.0,
                                                                              ),
                                                                              Row(
                                                                                children: <Widget>[
                                                                                  Icon(
                                                                                    FontAwesomeIcons.mapMarkerAlt,
                                                                                    color: Color(0xff2F3542),
                                                                                    size: 16.0,
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 6.0,
                                                                                  ),
                                                                                  Text(
                                                                                    animal.ownername,
                                                                                    style: TextStyle(
                                                                                      fontSize: 16.0,
                                                                                      color: Color(0xff2F3542),
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Stack(
                                                                  children: <
                                                                      Widget>[
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: animal
                                                                            .backgroundColor,
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.0),
                                                                      ),
                                                                      height:
                                                                          190.0,
                                                                      width:
                                                                          deviceWidth *
                                                                              0.4,
                                                                    ),
                                                                    Hero(
                                                                      tag: animal
                                                                          .name,
                                                                      child:
                                                                          Image(
                                                                        image: AssetImage(
                                                                            animal.imageUrl),
                                                                        height:
                                                                            210.0,
                                                                        fit: BoxFit
                                                                            .fitHeight,
                                                                        width: deviceWidth *
                                                                            0.4,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      }),
                                                ),
                                              ],
                                            ),
                                          ),

                                          ///////////////////DOGS/////////////////////////////////
                                          Center(
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: ListView.builder(
                                                      padding: EdgeInsets.only(
                                                        top: 10.0,
                                                      ),
                                                      itemCount: dogs.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        final animal =
                                                            dogs[index];

                                                        return GestureDetector(
                                                          onTap: () =>
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder: (_) =>
                                                                          AnimalsDetailsScreen(
                                                                            animal:
                                                                                animal,
                                                                          ))),
                                                          child: Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                              bottom: 10.0,
                                                              right: 10.0,
                                                              left: 10.0,
                                                            ),
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: <
                                                                  Widget>[
                                                                Material(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.0),
                                                                  elevation:
                                                                      4.0,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .symmetric(
                                                                      horizontal:
                                                                          20.0,
                                                                      vertical:
                                                                          20.0,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: <
                                                                          Widget>[
                                                                        SizedBox(
                                                                          width:
                                                                              deviceWidth * 0.4,
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: <Widget>[
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: <Widget>[
                                                                                  Text(
                                                                                    animal.name,
                                                                                    style: TextStyle(
                                                                                      fontSize: 26.0,
                                                                                      color: Color(0xff2F3542),
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                                  ),
                                                                                  Icon(
                                                                                    animal.isFemale ? FontAwesomeIcons.venus : FontAwesomeIcons.mars,
                                                                                    color: Color(0xff2F3542),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.0,
                                                                              ),
                                                                              Text(
                                                                                animal.scientificName,
                                                                                style: TextStyle(
                                                                                  fontSize: 16.0,
                                                                                  color: Color(0xff2F3542),
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.0,
                                                                              ),
                                                                              Text(
                                                                                '${animal.age} years old',
                                                                                style: TextStyle(
                                                                                  color: Color(0xff2F3542),
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.0,
                                                                              ),
                                                                              Row(
                                                                                children: <Widget>[
                                                                                  Icon(
                                                                                    FontAwesomeIcons.mapMarkerAlt,
                                                                                    color: Color(0xff2F3542),
                                                                                    size: 16.0,
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 6.0,
                                                                                  ),
                                                                                  Text(
                                                                                    animal.ownername,
                                                                                    style: TextStyle(
                                                                                      fontSize: 16.0,
                                                                                      color: Color(0xff2F3542),
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Stack(
                                                                  children: <
                                                                      Widget>[
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: animal
                                                                            .backgroundColor,
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.0),
                                                                      ),
                                                                      height:
                                                                          190.0,
                                                                      width:
                                                                          deviceWidth *
                                                                              0.4,
                                                                    ),
                                                                    Hero(
                                                                      tag: animal
                                                                          .name,
                                                                      child:
                                                                          Image(
                                                                        image: AssetImage(
                                                                            animal.imageUrl),
                                                                        height:
                                                                            210.0,
                                                                        fit: BoxFit
                                                                            .fitHeight,
                                                                        width: deviceWidth *
                                                                            0.4,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      }),
                                                ),
                                              ],
                                            ),
                                          ),

                                          ////////////////////////////////////BIRD//////////////////////////
                                          Center(
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: ListView.builder(
                                                      padding: EdgeInsets.only(
                                                        top: 10.0,
                                                      ),
                                                      itemCount: birds.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        final animal =
                                                            cats[index];

                                                        return GestureDetector(
                                                          onTap: () =>
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder: (_) =>
                                                                          AnimalsDetailsScreen(
                                                                            animal:
                                                                                animal,
                                                                          ))),
                                                          child: Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                              bottom: 10.0,
                                                              right: 10.0,
                                                              left: 10.0,
                                                            ),
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: <
                                                                  Widget>[
                                                                Material(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.0),
                                                                  elevation:
                                                                      4.0,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .symmetric(
                                                                      horizontal:
                                                                          20.0,
                                                                      vertical:
                                                                          20.0,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: <
                                                                          Widget>[
                                                                        SizedBox(
                                                                          width:
                                                                              deviceWidth * 0.4,
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: <Widget>[
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: <Widget>[
                                                                                  Text(
                                                                                    animal.name,
                                                                                    style: TextStyle(
                                                                                      fontSize: 26.0,
                                                                                      color: Color(0xff2F3542),
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                                  ),
                                                                                  Icon(
                                                                                    animal.isFemale ? FontAwesomeIcons.venus : FontAwesomeIcons.mars,
                                                                                    color: Color(0xff2F3542),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.0,
                                                                              ),
                                                                              Text(
                                                                                animal.scientificName,
                                                                                style: TextStyle(
                                                                                  fontSize: 16.0,
                                                                                  color: Color(0xff2F3542),
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.0,
                                                                              ),
                                                                              Text(
                                                                                '${animal.age} years old',
                                                                                style: TextStyle(
                                                                                  color: Color(0xff2F3542),
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.0,
                                                                              ),
                                                                              Row(
                                                                                children: <Widget>[
                                                                                  Icon(
                                                                                    FontAwesomeIcons.mapMarkerAlt,
                                                                                    color: Color(0xff2F3542),
                                                                                    size: 16.0,
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 6.0,
                                                                                  ),
                                                                                  Text(
                                                                                    animal.ownername,
                                                                                    style: TextStyle(
                                                                                      fontSize: 16.0,
                                                                                      color: Color(0xff2F3542),
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Stack(
                                                                  children: <
                                                                      Widget>[
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: animal
                                                                            .backgroundColor,
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.0),
                                                                      ),
                                                                      height:
                                                                          190.0,
                                                                      width:
                                                                          deviceWidth *
                                                                              0.4,
                                                                    ),
                                                                    Hero(
                                                                      tag: animal
                                                                          .name,
                                                                      child:
                                                                          Image(
                                                                        image: AssetImage(
                                                                            animal.imageUrl),
                                                                        height:
                                                                            210.0,
                                                                        fit: BoxFit
                                                                            .fitHeight,
                                                                        width: deviceWidth *
                                                                            0.4,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      }),
                                                ),
                                              ],
                                            ),
                                          ),
                                          //////////////////////FISH/////////////////////////////////
                                          Center(
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: ListView.builder(
                                                      padding: EdgeInsets.only(
                                                        top: 10.0,
                                                      ),
                                                      itemCount: fishes.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        final animal =
                                                            fishes[index];

                                                        return GestureDetector(
                                                          onTap: () =>
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder: (_) =>
                                                                          AnimalsDetailsScreen(
                                                                            animal:
                                                                                animal,
                                                                          ))),
                                                          child: Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                              bottom: 10.0,
                                                              right: 10.0,
                                                              left: 10.0,
                                                            ),
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: <
                                                                  Widget>[
                                                                Material(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.0),
                                                                  elevation:
                                                                      4.0,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .symmetric(
                                                                      horizontal:
                                                                          20.0,
                                                                      vertical:
                                                                          20.0,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: <
                                                                          Widget>[
                                                                        SizedBox(
                                                                          width:
                                                                              deviceWidth * 0.4,
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: <Widget>[
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: <Widget>[
                                                                                  Text(
                                                                                    animal.name,
                                                                                    style: TextStyle(
                                                                                      fontSize: 26.0,
                                                                                      color: Color(0xff2F3542),
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                                  ),
                                                                                  Icon(
                                                                                    animal.isFemale ? FontAwesomeIcons.venus : FontAwesomeIcons.mars,
                                                                                    color: Color(0xff2F3542),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.0,
                                                                              ),
                                                                              Text(
                                                                                animal.scientificName,
                                                                                style: TextStyle(
                                                                                  fontSize: 16.0,
                                                                                  color: Color(0xff2F3542),
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.0,
                                                                              ),
                                                                              Text(
                                                                                '${animal.age} years old',
                                                                                style: TextStyle(
                                                                                  color: Color(0xff2F3542),
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.0,
                                                                              ),
                                                                              Row(
                                                                                children: <Widget>[
                                                                                  Icon(
                                                                                    FontAwesomeIcons.mapMarkerAlt,
                                                                                    color: Color(0xff2F3542),
                                                                                    size: 16.0,
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 6.0,
                                                                                  ),
                                                                                  Text(
                                                                                    animal.ownername,
                                                                                    style: TextStyle(
                                                                                      fontSize: 16.0,
                                                                                      color: Color(0xff2F3542),
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Stack(
                                                                  children: <
                                                                      Widget>[
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: animal
                                                                            .backgroundColor,
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.0),
                                                                      ),
                                                                      height:
                                                                          190.0,
                                                                      width:
                                                                          deviceWidth *
                                                                              0.4,
                                                                    ),
                                                                    Hero(
                                                                      tag: animal
                                                                          .name,
                                                                      child:
                                                                          Image(
                                                                        image: AssetImage(
                                                                            animal.imageUrl),
                                                                        height:
                                                                            210.0,
                                                                        fit: BoxFit
                                                                            .fitHeight,
                                                                        width: deviceWidth *
                                                                            0.4,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      }),
                                                ),
                                              ],
                                            ),
                                          ),
                                          ///////////////////////////FROG////////////////////////
                                          Center(
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: ListView.builder(
                                                      padding: EdgeInsets.only(
                                                        top: 10.0,
                                                      ),
                                                      itemCount: fishes.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        final animal =
                                                            fishes[index];

                                                        return GestureDetector(
                                                          onTap: () =>
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder: (_) =>
                                                                          AnimalsDetailsScreen(
                                                                            animal:
                                                                                animal,
                                                                          ))),
                                                          child: Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                              bottom: 10.0,
                                                              right: 10.0,
                                                              left: 10.0,
                                                            ),
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: <
                                                                  Widget>[
                                                                Material(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.0),
                                                                  elevation:
                                                                      4.0,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .symmetric(
                                                                      horizontal:
                                                                          20.0,
                                                                      vertical:
                                                                          20.0,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: <
                                                                          Widget>[
                                                                        SizedBox(
                                                                          width:
                                                                              deviceWidth * 0.4,
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: <Widget>[
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: <Widget>[
                                                                                  Text(
                                                                                    animal.name,
                                                                                    style: TextStyle(
                                                                                      fontSize: 26.0,
                                                                                      color: Color(0xff2F3542),
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                                  ),
                                                                                  Icon(
                                                                                    animal.isFemale ? FontAwesomeIcons.venus : FontAwesomeIcons.mars,
                                                                                    color: Color(0xff2F3542),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.0,
                                                                              ),
                                                                              Text(
                                                                                animal.scientificName,
                                                                                style: TextStyle(
                                                                                  fontSize: 16.0,
                                                                                  color: Color(0xff2F3542),
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.0,
                                                                              ),
                                                                              Text(
                                                                                '${animal.age} years old',
                                                                                style: TextStyle(
                                                                                  color: Color(0xff2F3542),
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10.0,
                                                                              ),
                                                                              Row(
                                                                                children: <Widget>[
                                                                                  Icon(
                                                                                    FontAwesomeIcons.mapMarkerAlt,
                                                                                    color: Color(0xff2F3542),
                                                                                    size: 16.0,
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 6.0,
                                                                                  ),
                                                                                  Text(
                                                                                    animal.ownername,
                                                                                    style: TextStyle(
                                                                                      fontSize: 16.0,
                                                                                      color: Color(0xff2F3542),
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Stack(
                                                                  children: <
                                                                      Widget>[
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: animal
                                                                            .backgroundColor,
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.0),
                                                                      ),
                                                                      height:
                                                                          190.0,
                                                                      width:
                                                                          deviceWidth *
                                                                              0.4,
                                                                    ),
                                                                    Hero(
                                                                      tag: animal
                                                                          .name,
                                                                      child:
                                                                          Image(
                                                                        image: AssetImage(
                                                                            animal.imageUrl),
                                                                        height:
                                                                            210.0,
                                                                        fit: BoxFit
                                                                            .fitHeight,
                                                                        width: deviceWidth *
                                                                            0.4,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      }),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
