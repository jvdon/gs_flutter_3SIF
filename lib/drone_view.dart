// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gs_flutter/drone.dart';
import 'package:gs_flutter/drone_image.dart';
import 'package:gs_flutter/image_view.dart';

class DroneView extends StatefulWidget {
  Drone drone;

  DroneView({required this.drone});

  @override
  State<DroneView> createState() => _DroneViewState();
}

class _DroneViewState extends State<DroneView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drone System - Drone Details"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("Drone #${widget.drone.id}"),
          ),
          Expanded(
              child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: widget.drone.images.length,
            padding: EdgeInsets.all(10),
            itemBuilder: (context, index) {
              DroneImage image = widget.drone.images[index];
              return InkWell(
                child: Column(
                  children: [image.image, Text(image.ID)],
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ImageView(image: image);
                    },
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
