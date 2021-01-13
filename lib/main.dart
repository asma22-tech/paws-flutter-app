import 'package:Paws/SignUp.dart';
import 'package:Paws/Login.dart';
import 'package:Paws/Start.dart';
import 'package:Paws/home.dart';
import 'package:flutter/material.dart';
import 'package:Paws/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.pink),
        title: 'Paws',
        debugShowCheckedModeBanner: false,
        home: OnboardingScreen(),
        routes: <String, WidgetBuilder>{
          "Login": (BuildContext context) => Login(),
          "SignUp": (BuildContext context) => SignUp(),
          "Start": (BuildContext context) => Start(),
          "HomeScreen": (BuildContext context) => HomeScreen(),
        });
  }
}
