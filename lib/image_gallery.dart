// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            Text("Drone #${drones[index].id}", style: GoogleFonts.poppins(fontSize: 24)),
            Container(
              height: 300,
              child: GridView.builder(
                padding: EdgeInsets.all(5),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 5,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  DroneImage image = images[index];
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
        );
      },
    );
  }
}
