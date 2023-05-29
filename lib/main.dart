// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gs_flutter/dashboard.dart';
import 'package:gs_flutter/historic.dart';
import 'package:gs_flutter/image_gallery.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  final List<Widget> _telas = [Dashboard(), Image_Gallery(), Historic()];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drone System"),
        ),
        body: _telas[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_outlined), label: "Dashboard"),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_album_outlined), label: "Galeria"),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: "Histórico")
          ],
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        ),
      ),
    );
  }
}
