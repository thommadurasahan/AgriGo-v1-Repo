/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Map(),
    );
  }
}

class Map extends StatefulWidget {
  const Map({super.key});

  @override
  State<Map> createState() => _MapAppState();
}

class _MapAppState extends State<Map> {
  double long = 49.5;
  double lat = -0.09;
  var point = LatLng(49.5, -0.09);
  var location = [];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            onTap: (p) async {
              dynamic geocoder;
              location = await geocoder.local
                  .findAddressesFromCoordinates(newMethod(p));

              setState(() {
                point = p;
              });
            },
            center: LatLng(49.5, -0.09),
            zoom: 5.0,
          ),
          layers: [
            TileLayerOptions(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c']),
            MarkerLayerOptions(
              markers: [
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: point,
                  builder: (ctx) => const Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 34.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Card(
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16.0),
                    hintText: "Search for your localisation",
                    prefixIcon: Icon(Icons.location_on_outlined),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                          "${location.first.countryName},${location.first.locality}, ${location.first.featureName}"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Coordinates newMethod(p) => Coordinates(p.latitude, p.longitude);
}

mapOptions(
    {required Future<Null> Function(dynamic p) onTap,
    required LatLng center,
    required double zoom}) {}

markerLayerOptions({required List markers}) {}

tileLayerOptions(
    {required String urlTemplate, required List<String> subdomains}) {}

marker(
    {required double width,
    required double height,
    required LatLng point,
    required Container Function(dynamic ctx) builder}) {}

mixin LatLng {}

lating(double d, double e) {}

flutterMap({required options, required List<dynamic> layers}) {}
*/