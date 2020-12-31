class Shelter {
  final String imageUrl;
  final String name;
  final String adress;
  final int phonenumber;
  final String email;
  final String description;
  final String distrect;
  final String category;

  Shelter(
      {this.imageUrl,
      this.name,
      this.adress,
      this.phonenumber,
      this.email,
      this.description,
      this.distrect,
      this.category});
}

final List<Shelter> shelters = [
  Shelter(
    imageUrl: 'assets/images/shelter1.jpg',
    name: 'S.P.A.R.E',
    adress: 'Zamalek 16 Taha Hussein Street. Cairo, Cairo Governorate, Egypt',
    phonenumber: 1223162912,
    email: 'info@sparelives.org',
    distrect: 'Cairo',
    category: "Shelter",
    description:
        'S.P.A.R.E. a thought for the creatures of this world who cannot say when it hurts, when they are scared; for those who cannot look after themselves and cannot defend themselves. S.P.A.R.E. a thought for those animals who are abused, tortured and mishandled daily out of ignorance, poverty and often for amusement’s sake.',
  ),
  Shelter(
    imageUrl: "assets/images/shelter2.jpg",
    name: 'esma',
    adress: 'Al Reegha , Abo Seer , Manssoreya Giza, Giza Governorate, Egypt',
    phonenumber: 0,
    email: 'http://www.esmaegypt.org/',
    distrect: 'Giza',
    category: 'Shelter',
    description:
        'A small group of Egyptians and expatriates came together to fight this notion of population control and to protect and rescue the animals in immediate danger.',
  ),
  Shelter(
    imageUrl: "assets/images/shelter4.jpg",
    name: 'HOPE',
    adress: 'After Abu Sir Pyramid Kafr Abû Sîr, Cairo Governorate, Egypt',
    phonenumber: 1094458429,
    email: 'nfo@hope-rescue.com',
    distrect: 'Cairo',
    category: 'Shelter',
    description:
        'HOPE is non profit organization providing a network of rescuers, sponsors and medical resources aiming to help save and rehabilitate Egyptian stray animals.',
  ),
];
