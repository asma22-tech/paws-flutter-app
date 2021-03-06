import 'package:Paws/ShelterSignUp.dart';
import 'package:Paws/SignUp.dart';
import 'package:Paws/Login.dart';
import 'package:Paws/Start.dart';
import 'package:Paws/home.dart';
import 'package:Paws/models/place.dart';
import 'package:Paws/services/geolocator_service.dart';
import 'package:Paws/services/places_service.dart';
import 'package:flutter/material.dart';
import 'package:Paws/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final locatorService = GeoLocatorService();
  final placesService = PlacesService();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        FutureProvider(create: (context) => locatorService.getLocation()),
        ProxyProvider<Position, Future<List<Place>>>(
          update: (context, position, places) {
            return (position != null)
                ? placesService.getPlaces(position.latitude, position.longitude)
                : null;
          },
        )
      ],
      child: MaterialApp(
          theme: ThemeData(primaryColor: Colors.pink),
          title: 'Paws',
          debugShowCheckedModeBanner: false,
          home: OnboardingScreen(),
          routes: <String, WidgetBuilder>{
            "Login": (BuildContext context) => Login(),
            "SignUp": (BuildContext context) => SignUp(),
            "ShelterSignUp": (BuildContext context) => ShelterSignUp(),
            "Start": (BuildContext context) => Start(),
            "HomeScreen": (BuildContext context) => HomeScreen(),
          }),
    );
  }
}
