import 'package:flutter/material.dart';
import 'package:gs_flutter/drone.dart';
import 'package:gs_flutter/drone_image.dart';

import 'package:latlong2/latlong.dart';

abstract class Database {
  static List<Drone> drones = [
    Drone(id: 1, position: LatLng(0, 0), images: [
      DroneImage(
          ID: "ID435435",
          image: Image(
            image: NetworkImage(
                "https://picjumbo.com/wp-content/uploads/beautiful-green-field-scenery-free-photo.jpg"),
          ))
    ]),
    Drone(id: 2, position: LatLng(0, 5), images: [
      DroneImage(
          ID: "ID435435",
          image: Image(
            image: NetworkImage(
                "https://media.istockphoto.com/id/113145561/pt/foto/campo-verde-com-linhas-por-%C3%A1rvores-em-dia-claro.jpg?s=612x612&w=0&k=20&c=AXNO_gfQMiA1mlP6uqBxScmODBNCwF9PMZcwKSqPYKs="),
          ))
    ]),
    Drone(id: 3, position: LatLng(-5, 0), images: [
      DroneImage(
          ID: "ID435435",
          image: Image(
            image: NetworkImage(
                "https://picjumbo.com/wp-content/uploads/beautiful-green-field-scenery-free-photo.jpg"),
          ))
    ]),
    Drone(id: 4, position: LatLng(5, -5), images: [
      DroneImage(
          ID: "ID435435",
          image: Image(
            image: NetworkImage(
                "https://t3.ftcdn.net/jpg/01/97/28/16/360_F_197281614_aLQiuOxEY3DVvQGHv7klsLZoIL26qJwH.jpg"),
          ))
    ]),
    Drone(id: 5, position: LatLng(-5, -5), images: [
      DroneImage(
          ID: "ID435435",
          image: Image(
            image: NetworkImage(
                "https://picjumbo.com/wp-content/uploads/beautiful-green-field-scenery-free-photo.jpg"),
          ))
    ]),
    Drone(id: 6, position: LatLng(-8, 7), images: [
      DroneImage(
          ID: "ID435435",
          image: Image(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2014/01/22/19/44/flower-field-250016_1280.jpg"),
          ))
    ]),
  ];
}
