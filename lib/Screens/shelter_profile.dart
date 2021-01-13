import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ShelterProfileScreen extends StatelessWidget {
  final DocumentSnapshot shelterData;
  final String category;

  //requiring the list of todos
  ShelterProfileScreen({Key key, @required this.shelterData,@required this.category }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  color:Color(0xffFDCB6E),
                  
              ),
              child: Container(
                width: double.infinity,
                height: 350.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://www.trendrr.net/wp-content/uploads/2017/06/Deepika-Padukone-1.jpg",
                        ),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        shelterData['Name'],
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                        clipBehavior: Clip.antiAlias,
                        color: Colors.white,
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 22.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(

                                  children: [
                                    Text(
                                      "District",
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      shelterData['District'],
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.pinkAccent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(

                                  children: [
                                    Text(
                                      "Phone",
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      shelterData['PhoneNumber'],
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.pinkAccent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
          ),
          // Container(
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 16.0),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           "Info:",
          //           style: TextStyle(
          //               color: Colors.redAccent,
          //               fontStyle: FontStyle.normal,
          //               fontSize: 28.0
          //           ),
          //         ),
          //         SizedBox(
          //           height: 10.0,
          //         ),
          //         Text('My name is Natasha and I am  a freelance mobile app developper.\n'
          //             'Having Experiece in Flutter and Android',
          //           style: TextStyle(
          //             fontSize: 22.0,
          //             fontStyle: FontStyle.italic,
          //             fontWeight: FontWeight.w300,
          //             color: Colors.black,
          //             letterSpacing: 2.0,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
  
        ],
      ),
    );
  }
}
