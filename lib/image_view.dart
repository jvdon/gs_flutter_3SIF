// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gs_flutter/drone_image.dart';

class ImageView extends StatefulWidget {
  DroneImage image;

  ImageView({required this.image});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drone System - Image Viewer"),
      ),
      body: Column(
        children: [
          widget.image.image,
          Text(widget.image.ID),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.sunny),
                  title: Text("Photo ID"),
                  subtitle: Text("${widget.image.ID}"),
                ),
                ListTile(
                  
                  leading: Icon(Icons.sunny),
                  title: Text("UV Index"),
                  subtitle: Text("${widget.image.soildData.UV}"),
                ),
                ListTile(
                  leading: Icon(Icons.air),
                  title: Text("Wind speed"),
                  subtitle: Text("${widget.image.soildData.wind} Km/h"),
                ),
                ListTile(
                  leading: Icon(Icons.water_drop_outlined),
                  title: Text("Humidity Level"),
                  subtitle: Text("${widget.image.soildData.humidity * 100}%"),
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit_sharp),
                  title: Text("Temperature"),
                  subtitle: Text("${widget.image.soildData.temperature}ºC"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
