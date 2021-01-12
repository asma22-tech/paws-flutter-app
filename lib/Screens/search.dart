import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class Search extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<Search> {
  GoogleMapController controller;
  //Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  Map<MarkerId,Marker> markers = {};
  var _markerIdCounter = 0;
  void initMarker(specify) async {
    final String markerIdVal = 'marker_id_$_markerIdCounter';
    _markerIdCounter++;
    final MarkerId markerId = MarkerId(markerIdVal);
    print(markerId);
    print(specify['Location'].latitude);
    print(specify['Location'].longitude);
    print(specify['Name']);
    final Marker marker = Marker(
      markerId: markerId,
      position:
          LatLng(specify['Location'].latitude, specify['Location'].longitude),
      infoWindow: InfoWindow(title: specify['Name'], snippet: 'Animal Shelter'),
    );
    setState(() {
      markers[markerId] = marker;
    });
  }

  getMarkerData() async {
    FirebaseFirestore.instance
        .collection('Shelters')
        .get()
        .then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        print(result.data());
        initMarker(result.data());
      });
    });
  }

  void initState() {
    getMarkerData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final currentPosition = Provider.of<Position>(context);

    // Set<Marker> getMarker() {
    //   return <Marker>[
    //     Marker(
    //         markerId: MarkerId('Shop'),
    //         position:
    //             LatLng(currentPosition.latitude, currentPosition.longitude),
    //         icon: BitmapDescriptor.defaultMarker,
    //         infoWindow: InfoWindow(title: 'Home'))
    //   ].toSet();
    // }

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffFDCB6E),
          title: Text(
            "Near You",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xff2F3542),
                fontWeight: FontWeight.bold),
          )),
      body: (currentPosition != null)
          ? Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.88,
                  width: MediaQuery.of(context).size.width,
                  child: GoogleMap(
                    markers: Set.of(markers.values),
                    initialCameraPosition: CameraPosition(
                        target: LatLng(currentPosition.latitude,
                            currentPosition.longitude),
                        zoom: 16.0),
                    zoomGesturesEnabled: true,
                    onMapCreated: (GoogleMapController controller) {
                      controller = controller;
                    },
                  ),
                ),
              ],
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
