import 'package:flutter/material.dart';

class OthersScreen extends StatefulWidget {
  const OthersScreen({super.key});

  @override
  State<OthersScreen> createState() => _OthersScreenState();
}

class _OthersScreenState extends State<OthersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AgriGO'),
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
        backgroundColor: const Color(0xFF25DA15),
      ),
      body: const SingleChildScrollView(
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
