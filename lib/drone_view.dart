// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        title: Text(
          "Drone System - Drone Details",
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "Drone #${widget.drone.id}",
              style: GoogleFonts.roboto(fontSize: 32),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "Cultivo: ${widget.drone.crop}",
              style:
                  GoogleFonts.actor(fontSize: 32, fontWeight: FontWeight.w200),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
              itemCount: widget.drone.images.length,
              padding: EdgeInsets.all(10),
              itemBuilder: (context, index) {
                DroneImage image = widget.drone.images[index];
                return InkWell(
                  child: Column(
                    children: [
                      image.image,
                      Padding(padding: EdgeInsets.all(5)),
                      Text(image.ID, style: GoogleFonts.pressStart2p())
                    ],
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
            ),
          ),
        ],
      ),
    );
  }
}
