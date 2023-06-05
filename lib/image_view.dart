// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        title: Text(
          "Drone System - Image Viewer",
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Column(
        children: [
          widget.image.image,
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.pending_actions_rounded),
                  title: Text("Photo ID", style: GoogleFonts.actor()),
                  subtitle:
                      Text(widget.image.ID, style: GoogleFonts.roboto()),
                ),
                ListTile(
                  leading: Icon(Icons.sunny),
                  title: Text("UV Index", style: GoogleFonts.actor()),
                  subtitle: Text("${widget.image.soildData.UV}",
                      style: GoogleFonts.roboto()),
                ),
                ListTile(
                  leading: Icon(Icons.air),
                  title: Text("Wind speed", style: GoogleFonts.actor()),
                  subtitle: Text("${widget.image.soildData.wind} Km/h",
                      style: GoogleFonts.roboto()),
                ),
                ListTile(
                  leading: Icon(Icons.water_drop_outlined),
                  title: Text("Humidity Level", style: GoogleFonts.actor()),
                  subtitle: Text("${widget.image.soildData.humidity * 100}%",
                      style: GoogleFonts.roboto()),
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit_sharp),
                  title: Text("Temperature", style: GoogleFonts.actor()),
                  subtitle: Text("${widget.image.soildData.temperature}ºC",
                      style: GoogleFonts.roboto()),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
