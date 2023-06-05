// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gs_flutter/database/db.dart';
import 'package:gs_flutter/drone.dart';
import 'package:gs_flutter/drone_view.dart';

import 'package:latlong2/latlong.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    List<Drone> drones = Database.drones;
    return Column(
      children: [
        Expanded(
          flex: 6,
          child: Row(
            children: [
              // Drones
              Expanded(
                flex: 4,
                child: ListView.builder(
                  itemCount: drones.length,
                  itemBuilder: (context, index) {
                    Drone drone = drones[index];
                    return ListTile(
                      leading: Icon(
                        Icons.online_prediction,
                        color: drone.online ? Colors.green : Colors.red,
                      ),
                      title: Text("Drone #${drone.id} - ${drone.crop}"),
                      subtitle: Text(
                        "${drone.position.latitude} - ${drone.position.longitude}",
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return DroneView(
                                drone: drone,
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
        // Map
        Expanded(
          flex: 4,
          child: FlutterMap(
            options:
                MapOptions(center: LatLng(-14.2400732, -53.1805017), zoom: 4),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.zeyk.Gs',
              ),
              MarkerLayer(
                markers: List.generate(
                  drones.length,
                  (index) {
                    Drone drone = drones[index];
                    return Marker(
                      point: LatLng(
                        drone.position.latitude,
                        drone.position.longitude,
                      ),
                      width: 40,
                      height: 40,
                      builder: (context) => Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        children: [
                          Icon(Icons.location_on, color: Colors.deepPurple,),
                          Text("${drone.id.toString()}"),
                        ],
                      ),
                      rotate: true,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
