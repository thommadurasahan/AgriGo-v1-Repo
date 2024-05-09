import 'package:flutter/material.dart';
import 'package:flutter_agrigo/aboutus.dart';
import 'package:flutter_agrigo/home_sin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeSin(),
    );
  }
}
