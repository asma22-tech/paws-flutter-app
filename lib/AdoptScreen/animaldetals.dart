import 'package:flutter/material.dart';
import 'package:Paws/AdoptScreen/animalslist.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

class AnimalsDetailsScreen extends StatelessWidget {
  final Animal animal;

  AnimalsDetailsScreen({this.animal});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: screenHeight * 0.5,
                    color: animal.backgroundColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 60.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  FontAwesomeIcons.arrowLeft,
                                  color: Color(0xff2F3542),
                                ),
                              ),
                              Icon(
                                CupertinoIcons.share,
                                color: Color(0xff2F3542),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.35,
                    child: Hero(
                      tag: animal.name,
                      child: Image(
                        image: AssetImage(animal.imageUrl),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 22.0,
                    vertical: 15.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 22.0,
                            backgroundColor: Color(0xff2F3542),
                            backgroundImage:
                                AssetImage('assets/images/dog1.png'),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      animal.ownername,
                                      style: TextStyle(
                                        color: Color(0xff2F3542),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'May 25, 2019',
                                      style: TextStyle(
                                        color: Color(0xff2F3542),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Owner',
                                  style: TextStyle(
                                    color: Color(0xff2F3542),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        animal.statement,
                        style: TextStyle(
                          color: Color(0xff2F3542),
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                color: Colors.white,
              )),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.circular(20.0),
                        elevation: 4.0,
                        color: Color(0xff2F3542),
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(
                            FontAwesomeIcons.heart,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 24.0,
                      ),
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          elevation: 4.0,
                          color: Color(0xffFF6B81),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Adopt',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            child: Material(
              borderRadius: BorderRadius.circular(30.0),
              elevation: 6.0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          animal.isFemale
                              ? FontAwesomeIcons.venus
                              : FontAwesomeIcons.mars,
                          color: Color(0xff2F3542),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          animal.scientificName,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff2F3542),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '${animal.age} years old',
                          style: TextStyle(
                            color: Color(0xff2F3542),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
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
                          animal.address,
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                height: 110.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
