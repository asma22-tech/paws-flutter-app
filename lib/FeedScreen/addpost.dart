import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:uuid/uuid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image/image.dart' as ImD;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:Paws/SignUp.dart';

class Addpost extends StatefulWidget {
  @override
  _AddpostState createState() => _AddpostState();
}

class _AddpostState extends State<Addpost> {
  final Reference storageReferance =
      FirebaseStorage.instance.ref().child("Posts Pictures");
  bool uploading = false;
  String postId = Uuid().v4();
  File file;
  TextEditingController descriptionTextEditingController =
      TextEditingController();
  TextEditingController locationTextEditingController = TextEditingController();

  captureimagefromgallery() async {
    Navigator.pop(context);
    File imageFile = await ImagePicker.pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      this.file = imageFile;
    });
  }

  captureimagewithcamera() async {
    Navigator.pop(context);
    File imageFile = await ImagePicker.pickImage(
      source: ImageSource.camera,
      maxHeight: 680,
      maxWidth: 970,
    );
    setState(() {
      this.file = imageFile;
    });
  }

  takeImage(mcontext) {
    return showDialog(
      context: mcontext,
      builder: (context) {
        return SimpleDialog(
          title: Text(
            "New Post",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          children: <Widget>[
            SimpleDialogOption(
              child: Text(
                "capture Image with Camera",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: captureimagewithcamera,
            ),
            SimpleDialogOption(
              child: Text(
                "Select image from galary",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: captureimagefromgallery,
            ),
            SimpleDialogOption(
              child: Text(
                "Cancel",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }

  addimageScreen() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.add_photo_alternate,
            size: 200,
            color: Colors.grey[850],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Text(
                  "Upload photo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                color: Colors.pink,
                onPressed: () => takeImage(context)),
          )
        ],
      ),
    );
  }

  ClearPostInfo() {
    locationTextEditingController.clear();
    descriptionTextEditingController.clear();
    setState(() {
      file = null;
    });
  }

  getUserCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark mplacemark = placemarks[0];
    String completeAddressInfo =
        '${mplacemark.subThoroughfare} ${mplacemark.thoroughfare}, ${mplacemark.subLocality} ${mplacemark.locality}, ${mplacemark.subAdministrativeArea} ${mplacemark.administrativeArea}, ${mplacemark.postalCode} ${mplacemark.country},';
    String specificaddress = '${mplacemark.locality},${mplacemark.country}';
    locationTextEditingController.text = specificaddress;
  }

  compressingPhoto() async {
    final tDirectory = await getTemporaryDirectory();
    final path = tDirectory.path;
    ImD.Image mImageFile = ImD.decodeImage(file.readAsBytesSync());
    final compressedImagefile = File('$path/img_$postId.jpg')
      ..writeAsBytesSync(ImD.encodeJpg(mImageFile, quality: 90));
    setState(() {
      file = compressedImagefile;
    });
  }

  controlUploadandSave() async {
    setState(() {
      uploading = true;
    });
    await compressingPhoto();
    String downloadUrl = await uploadPhoto(file);
    savePostInfotoFireStore(
        url: downloadUrl,
        location: locationTextEditingController.text,
        description: descriptionTextEditingController.text);
    locationTextEditingController.clear();
    descriptionTextEditingController.clear();
    setState(() {
      file = null;
      uploading = false;
      postId = Uuid().v4();
    });
  }

  Future<String> uploadPhoto(mImageFile) async {
    UploadTask mstorageUploadTask =
        storageReferance.child("post_$postId.jpg").putFile(mImageFile);
    TaskSnapshot storageTaskSnapshot = await mstorageUploadTask;
    String dowloadUrl = await storageTaskSnapshot.ref.getDownloadURL();
    return dowloadUrl;
  }

  displayuploadformSceen() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: ClearPostInfo,
        ),
        title: Text(
          "New Post",
          style: TextStyle(
              color: Colors.pink, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: uploading ? null : () => controlUploadandSave(),
            child: Text("Share"),
            color: Colors.pink,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 230,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Center(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: FileImage(file), fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/SignInDog.png"),
            ),
            title: Container(
              width: 250,
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: descriptionTextEditingController,
                decoration: InputDecoration(
                  hintText: "write post",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.person_pin_circle,
              color: Colors.white,
              size: 36,
            ),
            title: Container(
              width: 250,
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: locationTextEditingController,
                decoration: InputDecoration(
                  hintText: "write your location.",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            width: 220,
            height: 110,
            alignment: Alignment.center,
            child: RaisedButton.icon(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)),
              color: Colors.pink,
              icon: Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              label: Text(
                "Get my current location",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: getUserCurrentLocation,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return file == null ? addimageScreen() : displayuploadformSceen();
  }
}
