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
    Drone(
      id: 2,
      crop: "Soja",
      position: LatLng(-3.117034, -60.025780),
      images: [
        DroneImage(
          ID: "ID0360",
          soildData: Soil(
            wind: 20,
            UV: 5,
            temperature: 25,
            humidity: 0.8,
          ),
          image: Image.network(
            "https://t3.ftcdn.net/jpg/02/03/54/06/360_F_203540628_NrGv3FX4wDoeKPsUwifbiuOD1t5rMYCa.jpg",
          ),
        ),
        DroneImage(
          ID: "ID0360",
          soildData: Soil(
            wind: 10,
            UV: 8,
            temperature: 35,
            humidity: 0.3,
          ),
          image: Image.network(
            "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/i4w36mdp51WE/v1/1200x-1.jpg",
          ),
        ),
        DroneImage(
          ID: "ID0360",
          soildData: Soil(
            wind: 35,
            UV: 5,
            temperature: 25,
            humidity: 0.7,
          ),
          image: Image.network(
            "https://t3.ftcdn.net/jpg/02/14/66/04/360_F_214660468_ocfyQM8FzqF9fLUevnqDYRI0t8JY3gci.jpg",
          ),
        ),
      ],
    ),
    Drone(
      id: 3,
      crop: "Cana de Açúcar",
      position: LatLng(-5.63518, -35.4202),
      images: [
        DroneImage(
          ID: "ID0535",
          soildData: Soil(
            wind: 20,
            UV: 5,
            temperature: 30,
            humidity: 0.4,
          ),
          image: Image.network(
            "https://media.istockphoto.com/id/690503892/video/sugarcane-aerial-view-4k.jpg?s=640x640&k=20&c=tN7x4-aB4exDR3SRzL5oLTYXhoe-j1AhBM5UZk6K5Sc=",
          ),
        ),
        DroneImage(
          ID: "ID0535",
          soildData: Soil(
            wind: 10,
            UV: 3,
            temperature: 25,
            humidity: 0.6,
          ),
          image: Image.network(
            "https://s02.video.glbimg.com/x720/10633997.jpg",
          ),
        ),
        DroneImage(
          ID: "ID0535",
          soildData: Soil(
            wind: 35,
            UV: 7,
            temperature: 25,
            humidity: 0.8,
          ),
          image: Image.network(
            "https://www.unicamp.br/unicamp/sites/default/files/inline-images/img_DEST_cana-de-acucar_plantacao_20180718.jpg",
          ),
        ),
      ],
    ),
    Drone(
      id: 4,
      crop: "Milho",
      position: LatLng(-12.5587, -55.7141),
      images: [
        DroneImage(
          ID: "ID2054",
          soildData: Soil(wind: 20, UV: 5, temperature: 30, humidity: 0.8),
          image: Image.network(
            "https://thumbs.dreamstime.com/b/corn-field-aerial-view-corn-field-top-down-aerial-view-summer-green-vegetal-texture-agriculture-concept-194369627.jpg",
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
            "https://i0.wp.com/beefrunner.com/wp-content/uploads/2019/05/dead-corn-standing-farmer-field.jpg?resize=625%2C466&ssl=1",
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
            "https://farmdoc.illinois.edu/wp-content/uploads/2016/06/Fig-1a-6-23-16-540x405.png",
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
