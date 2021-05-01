import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

Future<void> userSetup(String displayName) async {
  CollectionReference users = FirebaseFirestore.instance.collection('Users');

  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser.uid.toString();
  users.add({'displayName': displayName, 'uid': uid});
  return;
}

Future<void> postsSetup(
    String mediaUrl, String location, String caption) async {
  CollectionReference users = FirebaseFirestore.instance.collection('Posts');
  String postId = Uuid().v4();
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser.uid.toString();
  users.add({
    'postId': postId,
    'ownerId': uid,
    'mediaUrl': mediaUrl,
    'caption': caption,
    "location": location,
    'likes': {}
  });
  return;
}
