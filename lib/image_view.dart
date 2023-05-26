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
        ],
      ),
    );
  }
}
