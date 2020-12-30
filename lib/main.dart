import 'package:flutter/material.dart';
import 'package:Paws/onboarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paws',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
