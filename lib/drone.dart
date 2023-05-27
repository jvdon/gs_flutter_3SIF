import 'package:gs_flutter/drone_image.dart';
import 'package:latlong2/latlong.dart';

class Drone {
  LatLng position;
  int id;

  List<DroneImage> images = [];

  bool online = true;

  Drone({required this.id, required this.position, required this.images, this.online = true});
}
