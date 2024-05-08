import 'package:flutter/material.dart';

class SpicesScreen extends StatefulWidget {
  const SpicesScreen({super.key});

  @override
  State<SpicesScreen> createState() => _SpicesScreenState();
}

class _SpicesScreenState extends State<SpicesScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Add spacing between profile picture and name
            const Text(
              'All Spices', // Replace with your profile name
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(width: 1.0),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align profile on right
              children: [
                // Replace CircleAvatar with Image
                Image.asset(
                  'assets/S5.jpg',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                const SizedBox(
                    width: 5.0), // Add spacing between profile picture and name
                const Text(
                  'මිරිස් කුඩු\nරු 2400.00/1kg\nNadun Spices', // Replace with your profile name
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(width: 20.0),
                Image.asset(
                  'assets/Compass.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
              ],
            ),
            const Divider(
              thickness: 1.0, // Adjust thickness as needed
              color: Colors.grey, // Adjust color as needed
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align profile on right
              children: [
                // Replace CircleAvatar with Image
                Image.asset(
                  'assets/S1.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                const SizedBox(
                    width: 5.0), // Add spacing between profile picture and name
                const Text(
                  'කහ කුඩු\nරු 3100.00/1kg\nBest Spices', // Replace with your profile name
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(width: 20.0),
                Image.asset(
                  'assets/Compass.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
              ],
            ),
            const Divider(
              thickness: 1.0, // Adjust thickness as needed
              color: Colors.grey, // Adjust color as needed
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align profile on right
              children: [
                // Replace CircleAvatar with Image
                Image.asset(
                  'assets/S2.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                const SizedBox(
                    width: 5.0), // Add spacing between profile picture and name
                const Text(
                  'බැදපු තුනපහ කුඩු\nරු 2760.00/1kg\nNew Spices Lanka', // Replace with your profile name
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(width: 8.0),
                Image.asset(
                  'assets/Compass.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
              ],
            ),
            const Divider(
              thickness: 1.0, // Adjust thickness as needed
              color: Colors.grey, // Adjust color as needed
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align profile on right
              children: [
                // Replace CircleAvatar with Image
                Image.asset(
                  'assets/S3.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                const SizedBox(
                    width: 5.0), // Add spacing between profile picture and name
                const Text(
                  'තුනපහ කුඩු\nරු 2300.00/1kg\nNavidu Spices', // Replace with your profile name
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(width: 30.0),
                Image.asset(
                  'assets/Compass.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
              ],
            ),
            const Divider(
              thickness: 1.0, // Adjust thickness as needed
              color: Colors.grey, // Adjust color as needed
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align profile on right
              children: [
                // Replace CircleAvatar with Image
                Image.asset(
                  'assets/S4.jpg',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                const SizedBox(
                    width: 5.0), // Add spacing between profile picture and name
                const Text(
                  'ගම්මිරිස් කුඩු\nරු 3400.00/1kg\nSpices Lanka', // Replace with your profile name
                  style: TextStyle(fontSize: 16.0),
                ),
                // const SizedBox(width: 30.0),
                Image.asset(
                  'assets/Compass.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
              ],
            ),
            const Divider(
              thickness: 1.0, // Adjust thickness as needed
              color: Colors.grey, // Adjust color as needed
            ),
          ],
        ),
      ),
    );
  }
}
