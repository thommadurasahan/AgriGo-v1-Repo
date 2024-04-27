import 'package:flutter/material.dart';

class LodingScreen extends StatelessWidget {
  const LodingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF25DA15),
        body: Center(
          child: Image(
            image: AssetImage('assets/Logo.png'),
            width: 150, 
            height: 150,
          ),
        ),
      ),
    );
  }
}
