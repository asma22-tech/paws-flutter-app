import 'package:flutter/material.dart';

class Animal {
  String name;
  String scientificName;
  String home;
  double age;
  String address;
  bool isFemale;
  String imageUrl;
  Color backgroundColor;
  String statement;
  String ownername;

  Animal({
    this.name,
    this.scientificName,
    this.home,
    this.age,
    this.address,
    this.isFemale,
    this.imageUrl,
    this.backgroundColor,
    this.statement,
    this.ownername,
  });
}

///////////////////////CATS//////////////////////////////
final List<Animal> cats = [
  Animal(
      name: 'Nancy',
      scientificName: 'Abyssinian cat',
      age: 1.0,
      address: '6 October',
      isFemale: true,
      imageUrl: 'assets/images/cat1.png',
      backgroundColor: Color(0xffF4E3E3),
      ownername: 'Asmaa',
      statement:
          "My job requires moving to another country. I don\'t have the opportunity to take the cat with me. I am looking for good people who will shelter Nancy."),
  Animal(
      name: 'BSBS',
      scientificName: 'Abyssinian cat',
      age: 1.5,
      address: 'Giza',
      isFemale: false,
      imageUrl: 'assets/images/cat2.png',
      backgroundColor: Color(0xffFDCB6E),
      ownername: 'Reem',
      statement:
          "My financial state can not afford taking care of it right now. I hope you will be her new home"),
];
/////////////////////////////////DOGS////////////////////////////////////
final List<Animal> dogs = [
  Animal(
      name: 'Lola',
      scientificName: 'Abyssinian cat',
      age: 2.0,
      address: 'Damitta',
      isFemale: true,
      imageUrl: 'assets/images/dog1.png',
      backgroundColor: Color(0xffF4E3E3),
      ownername: 'Hanya',
      statement:
          "I moved to a new building which does not allow my to keep my lola. I am hoping to find her a new home."),
  Animal(
      name: 'Cober',
      scientificName: 'Abyssinian cat',
      age: 1.5,
      address: 'West EL Balad',
      isFemale: false,
      imageUrl: 'assets/images/dog2.png',
      backgroundColor: Color(0xffFDCB6E),
      ownername: 'zezo',
      statement:
          "I am having a new baby and will not be able to take care of the dog. please take care of him she is an amaing dog."),
  Animal(
      name: 'Suger',
      scientificName: 'Abyssinian cat',
      age: 1.5,
      address: '5th destrict',
      isFemale: true,
      imageUrl: 'assets/images/dog3.png',
      backgroundColor: Color(0xffF4E3E3),
      ownername: 'Pets Shelter',
      statement: 'the pey is was a stray animal'),
];
///////////////////////////BIRD///////////////////////////////////////
final List<Animal> birds = [
  Animal(
    name: 'Lola',
    scientificName: 'Abyssinian cat',
    age: 2.0,
    address: 'Port Saaed',
    isFemale: true,
    imageUrl: 'assets/images/dog3.png',
    backgroundColor: Color(0xffF4E3E3),
    ownername: 'Al Aml Shelter',
    statement: 'the pet was given by its formar owner',
  ),
  Animal(
    name: 'Sally',
    scientificName: 'Abyssinian cat',
    age: 1.5,
    address: 'Alexandria',
    isFemale: false,
    imageUrl: 'assets/images/dog3.png',
    backgroundColor: Color(0xffF4E3E3),
    ownername: 'Ahmed',
    statement: 'I am getting married and my wife is allergic',
  ),
];
//////////////////////////////////fishes//////////////////////////////////////
final List<Animal> fishes = [
  Animal(
    name: 'koko',
    scientificName: 'Abyssinian cat',
    age: 2.0,
    address: 'Aswan',
    isFemale: true,
    imageUrl: 'assets/images/dog3.png',
    backgroundColor: Color(0xffF4E3E3),
    ownername: 'Ismail',
    statement:
        'I am currently in university and really busy so I can not take care of her.',
  ),
  Animal(
      name: 'Birdy',
      scientificName: 'Abyssinian cat',
      age: 1.5,
      address: 'Luxor',
      isFemale: false,
      imageUrl: 'assets/images/dog3.png',
      backgroundColor: Color(0xffF4E3E3),
      ownername: 'Lotfy'),
];
/////////////////////////////////frogs////////////////////////
final List<Animal> frogs = [
  Animal(
    name: 'tom',
    scientificName: 'Abyssinian cat',
    age: 2.0,
    address: 'Nile University',
    isFemale: true,
    imageUrl: 'assets/images/dog3.png',
    backgroundColor: Color(0xffF4E3E3),
    ownername: 'loca',
  ),
  Animal(
    name: 'speady',
    scientificName: 'Abyssinian cat',
    age: 1.5,
    address: 'blblabla',
    isFemale: false,
    imageUrl: 'assets/images/dog3.png',
    backgroundColor: Color(0xffF4E3E3),
    ownername: 'Mohamed',
  ),
];
//////////////////////////////
