import 'package:flutter/material.dart';

class OthersScreen extends StatefulWidget {
  @override
  _OthersScreenState createState() => _OthersScreenState();
}

class _OthersScreenState extends State<OthersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AgriGO'),
        actions: [
          IconButton(
            icon: Image.asset('assets/Compass.png'),
            onPressed: () {
              // Handle first icon press action
            },
          ),
          IconButton(
            icon: Image.asset('assets/Switch.png'),
            onPressed: () {
              // Handle second icon press action
            },
          ),
        ],
        backgroundColor: Color(0xFF25DA15),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Center the "All Imports" text
            Center(
              child: Text(
                'Othes', // Replace with your profile name
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            SizedBox(width: 1.0), // Optional spacing below
          ],
        ),
      ),
    );
  }
}
