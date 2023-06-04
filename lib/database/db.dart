// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gs_flutter/drone.dart';
import 'package:gs_flutter/drone_image.dart';
import 'package:gs_flutter/history.dart';
import 'package:gs_flutter/soil.dart';

import 'package:latlong2/latlong.dart';

abstract class Database {
  static List<Drone> drones = [
    Drone(
      id: 1,
      crop: "Trigo",
      position: LatLng(-20.4435, -54.6478),
      images: [
        DroneImage(
          ID: "ID2054",
          soildData: Soil(wind: 20, UV: 5, temperature: 30, humidity: 0.8),
          image: Image.network(
            "https://images.unsplash.com/photo-1595976281013-8024ecc02575?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHdoZWF0JTIwZmllbGR8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
          ),
        ),
        DroneImage(
          ID: "ID2054",
          soildData: Soil(
            wind: 10,
            UV: 8,
            temperature: 35,
            humidity: 0.3,
          ),
          image: Image.network(
            "https://media.istockphoto.com/id/1253113677/photo/burnt-field-of-wheat.jpg?s=612x612&w=0&k=20&c=EV1D_LlUKJpt31puiDdRuJI0AlZ_ENQV0m8mo5iRf5o=",
          ),
        ),
        DroneImage(
          ID: "ID2054",
          soildData: Soil(
            wind: 35,
            UV: 5,
            temperature: 25,
            humidity: 0.8,
          ),
          image: Image.network(
            "https://thumbs.dreamstime.com/b/windswept-field-motion-wheat-being-moved-high-chinook-winds-71647562.jpg",
          ),
        ),
      ],
    ),
  ];

  static List<History> historic = [
    History(
        title: "Drone Added",
        desc: "Drone #5 added",
        dateTime: DateTime.parse("2023-04-10")),
    History(
        title: "Drone Added",
        desc: "Drone #4 added",
        dateTime: DateTime.parse("2023-04-08")),
    History(
        title: "Drone Added",
        desc: "Drone #3 added",
        dateTime: DateTime.parse("2023-04-05")),
    History(
        title: "Drone Added",
        desc: "Drone #2 added",
        dateTime: DateTime.parse("2023-04-03")),
    History(
        title: "Drone Added",
        desc: "Drone #1 added",
        dateTime: DateTime.parse("2023-04-01")),
  ];
}
