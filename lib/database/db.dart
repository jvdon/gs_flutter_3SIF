// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gs_flutter/drone.dart';
import 'package:gs_flutter/drone_image.dart';
import 'package:gs_flutter/history.dart';

import 'package:latlong2/latlong.dart';

abstract class Database {
  static List<Drone> drones = [
    Drone(id: 1, position: LatLng(-21.0239, -47.3727), images: [
      DroneImage(
          ID: "ID2147",
          image: Image.network(
              "https://www.netafimusa.com/48da28/globalassets/demo/products-and-solutions/open-fields/open_fields_headvisual-graded.jpg?height=0&width=750&mode=crop&quality=80"))
    ]),
    Drone(id: 2, position: LatLng(-20.1913, -47.7051), images: [
      DroneImage(
          ID: "ID2047",
          image: Image.network(
              "https://images.nationalgeographic.org/image/upload/t_edhub_resource_key_image/v1638892233/EducationHub/photos/crops-growing-in-thailand.jpg"))
    ]),
    Drone(id: 3, position: LatLng(-21.2753, -47.3048), images: [
      DroneImage(
          ID: "ID2147",
          image: Image.network(
              "https://balchem.com/plant-nutrition/wp-content/uploads/sites/4/2021/02/Balchem-plant-nutrition-field-crops-how-we-serve-this-market-850x570.jpg"))
    ]),
    Drone(id: 4, position: LatLng(-46, -27), images: [
      DroneImage(
          ID: "ID4627",
          image: Image.network(
              "https://media.istockphoto.com/id/965148388/pt/foto/green-ripening-soybean-field-agricultural-landscape.jpg?s=612x612&w=0&k=20&c=Y11IEwuSunVWEYjVraLd8wvrObeRes6v5lzCvVJRZRc="))
    ]),
    Drone(id: 5, position: LatLng(-40, -26), images: [
      DroneImage(
          ID: "ID4026",
          image: Image.network(
              "https://www.ndsu.edu/agriculture/sites/default/files/styles/784x424/public/2021-06/soybean-field.jpg?h=5a8f14a3&itok=in1uve7F"))
    ]),
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
