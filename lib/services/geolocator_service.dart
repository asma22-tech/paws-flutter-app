import 'package:geolocator/geolocator.dart';

class GeoLocatorService {
  Future <Position> getLocation() async {
    Position geolocator = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return geolocator;
  }
}
