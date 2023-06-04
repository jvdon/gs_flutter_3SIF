// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gs_flutter/database/db.dart';
import 'package:gs_flutter/drone.dart';
import 'package:gs_flutter/drone_image.dart';
import 'package:gs_flutter/image_view.dart';

class Image_Gallery extends StatefulWidget {
  const Image_Gallery({super.key});

  @override
  State<Image_Gallery> createState() => _Image_GalleryState();
}

class _Image_GalleryState extends State<Image_Gallery> {
  @override
  Widget build(BuildContext context) {
    List<Drone> drones = Database.drones;
    return ListView.builder(
      padding: EdgeInsets.all(5),
      itemCount: drones.length,
      itemBuilder: (context, index) {
        List<DroneImage> images = drones[index].images;
        return Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text("Drone #${drones[index].id}"),
            Container(
              height: 300,
              child: GridView.builder(
                padding: EdgeInsets.all(5),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                ),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  DroneImage image = images[index];
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
              ),
            ),
          ],
        );
      },
    );
  }
}
