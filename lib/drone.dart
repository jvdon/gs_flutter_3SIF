// ignore_for_file: depend_on_referenced_packages

import 'package:gs_flutter/drone_image.dart';
import 'package:latlong2/latlong.dart';

class Drone {
  String crop;

  int id;

  LatLng position;

  List<DroneImage> images = [];

  bool online = true;

  Drone(
      {required this.id,
      required this.crop,
      required this.position,
      required this.images,
      this.online = true});
}
