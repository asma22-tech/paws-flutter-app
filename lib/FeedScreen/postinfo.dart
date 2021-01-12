class Post {
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;
  String caption;

  Post(
      {this.authorName,
      this.authorImageUrl,
      this.timeAgo,
      this.imageUrl,
      this.caption});
}

final List<Post> posts = [
  Post(
      authorName: 'Sam Martin',
      authorImageUrl: 'assets/images/cat1.png',
      timeAgo: '5 min',
      imageUrl: 'assets/images/cat1.png',
      caption: 'this is betty'),
  Post(
      authorName: 'Sam Martin',
      authorImageUrl: 'assets/images/cat1.png',
      timeAgo: '10 min',
      imageUrl: 'assets/images/cat1.png',
      caption: 'I am offering lucy for adoption'),
];

final List<String> stories = [
  'assets/images/cat1.png',
  'assets/images/cat1.png',
  'assets/images/cat1.png',
  'assets/images/cat1.png',
];
