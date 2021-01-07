import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';

class FBStorage {
  static Future<String> uploadPic(
      {@required String postID, @required File postImageFile}) async {
    {
      FirebaseStorage storage = FirebaseStorage.instance;
      Reference ref = storage.ref().child("image1" + DateTime.now().toString());
      UploadTask uploadTask = ref.putFile(postImageFile);
      uploadTask.then((res) {
        res.ref.getDownloadURL();
      });
      return null;
    }
  }
}
