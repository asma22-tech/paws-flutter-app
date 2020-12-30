import 'package:flutter/material.dart';

class Animal {
  String name;
  String scientificName;
  String shelter;
  double age;
  String distanceToUser;
  bool isFemale;
  String imageUrl;
  Color backgroundColor;

  Animal({
    this.name,
    this.scientificName,
    this.shelter,
    this.age,
    this.distanceToUser,
    this.isFemale,
    this.imageUrl,
    this.backgroundColor,
  });
}

///////////////////////CATS//////////////////////////////
final List<Animal> cats = [
  Animal(
    name: 'Nancy',
    scientificName: 'Abyssinian cat',
    shelter: 'Al Aml',
    age: 1.0,
    distanceToUser: '3.6 km',
    isFemale: true,
    imageUrl: 'assets/images/cat1.png',
    backgroundColor: Color(0xffF4E3E3),
  ),
  Animal(
    name: 'BSBS',
    scientificName: 'Abyssinian cat',
    shelter: 'Pets&Pets',
    age: 1.5,
    distanceToUser: '7.8 km',
    isFemale: false,
    imageUrl: 'assets/images/cat2.png',
    backgroundColor: Color(0xffFDCB6E),
  ),
];
/////////////////////////////////DOGS////////////////////////////////////
final List<Animal> dogs = [
  Animal(
    name: 'Lola',
    scientificName: 'Abyssinian cat',
    shelter: 'Al Aml',
    age: 2.0,
    distanceToUser: '3.6 km',
    isFemale: true,
    imageUrl: 'assets/images/dog1.png',
    backgroundColor: Color(0xffF4E3E3),
  ),
  Animal(
    name: 'Cober',
    scientificName: 'Abyssinian cat',
    shelter: 'Pets&Pets',
    age: 1.5,
    distanceToUser: '7.8 km',
    isFemale: false,
    imageUrl: 'assets/images/dog2.png',
    backgroundColor: Color(0xffFDCB6E),
  ),
  Animal(
    name: 'Suger',
    scientificName: 'Abyssinian cat',
    shelter: 'Pets&Pets',
    age: 1.5,
    distanceToUser: '1.2 km',
    isFemale: true,
    imageUrl: 'assets/images/dog3.png',
    backgroundColor: Color(0xffF4E3E3),
  ),
];
///////////////////////////BIRD///////////////////////////////////////
final List<Animal> birds = [
  Animal(
    name: 'Lola',
    scientificName: 'Abyssinian cat',
    shelter: 'Al Aml',
    age: 2.0,
    distanceToUser: '3.6 km',
    isFemale: true,
    imageUrl: 'assets/images/sola.png',
    backgroundColor: Color(0xffF4E3E3),
  ),
  Animal(
    name: 'Sally',
    scientificName: 'Abyssinian cat',
    shelter: 'Pets&Pets',
    age: 1.5,
    distanceToUser: '7.8 km',
    isFemale: false,
    imageUrl: 'assets/images/sola.png',
    backgroundColor: Color(0xffF4E3E3),
  ),
];
//////////////////////////////////fishes//////////////////////////////////////
final List<Animal> fishes = [
  Animal(
    name: 'koko',
    scientificName: 'Abyssinian cat',
    shelter: 'Al Aml',
    age: 2.0,
    distanceToUser: '3.6 km',
    isFemale: true,
    imageUrl: 'assets/images/sola.png',
    backgroundColor: Color(0xffF4E3E3),
  ),
  Animal(
    name: 'Birdy',
    scientificName: 'Abyssinian cat',
    shelter: 'Pets&Pets',
    age: 1.5,
    distanceToUser: '7.8 km',
    isFemale: false,
    imageUrl: 'assets/images/sola.png',
    backgroundColor: Color(0xffF4E3E3),
  ),
];
/////////////////////////////////frogs////////////////////////
final List<Animal> frogs = [
  Animal(
    name: 'tom',
    scientificName: 'Abyssinian cat',
    shelter: 'Al Aml',
    age: 2.0,
    distanceToUser: '3.6 km',
    isFemale: true,
    imageUrl: 'assets/images/sola.png',
    backgroundColor: Color(0xffF4E3E3),
  ),
  Animal(
    name: 'speady',
    scientificName: 'Abyssinian cat',
    shelter: 'Pets&Pets',
    age: 1.5,
    distanceToUser: '7.8 km',
    isFemale: false,
    imageUrl: 'assets/images/sola.png',
    backgroundColor: Color(0xffF4E3E3),
  ),
];
//////////////////////////////
