import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gs_flutter/database/db.dart';
import 'package:gs_flutter/drone.dart';
import 'package:gs_flutter/drone_view.dart';
import 'package:gs_flutter/image_gallery.dart';
import 'package:ionicons/ionicons.dart';

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
                      title: Text("Drone #${drone.id}"),
                      subtitle: Text(drone.position.toString()),
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
                MapOptions(center: LatLng(-23.533773, -46.625290), zoom: 8),
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
                        -23 + drone.position.latitude,
                        -46 + drone.position.longitude,
                      ),
                      width: 80,
                      height: 80,
                      builder: (context) =>
                          const Icon(Icons.airplanemode_active),
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
