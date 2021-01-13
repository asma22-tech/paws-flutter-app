import 'package:Paws/thread/moduls/users.dart';

class Comment {
  String comment;
  User user;
  DateTime dateOfComment;
  bool isLiked;
  Comment(this.user, this.comment, this.dateOfComment, this.isLiked);
}
