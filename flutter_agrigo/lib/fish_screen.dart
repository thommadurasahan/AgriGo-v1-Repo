import 'package:flutter/material.dart';

class FishScreen extends StatefulWidget {
  const FishScreen({super.key});

  @override
  State<FishScreen> createState() => _FishScreenState();
}

class _FishScreenState extends State<FishScreen> {
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
              'All Fish', // Replace with your profile name
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(width: 1.0),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align profile on right
              children: [
                // Replace CircleAvatar with Image
                Image.asset(
                  'assets/F1.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                const SizedBox(
                    width: 5.0), // Add spacing between profile picture and name
                const Text(
                  'අලගොඩුවා\nරු 840.00/1kg\nIsuru Fish ', // Replace with your profile name
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(width: 32.0),
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
                  'assets/F2.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                const SizedBox(
                    width: 5.0), // Add spacing between profile picture and name
                const Text(
                  'හුරුල්ලා\nරු 1140.00/1kg\nNawarathna Fish', // Replace with your profile name
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
                  'assets/F3.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                const SizedBox(
                    width: 5.0), // Add spacing between profile picture and name
                const Text(
                  'කුම්බලාවා\nරු 1810.00/1kg\nNew Fish Lanka', // Replace with your profile name
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(width: 27.0),
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
                  'assets/F4.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                const SizedBox(
                    width: 5.0), // Add spacing between profile picture and name
                const Text(
                  'ලේන පරව්\nරු 1240.00/1kg\nNimantha Fish', // Replace with your profile name
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(width: 32.0),
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
                  'assets/F5.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                const SizedBox(
                    width: 5.0), // Add spacing between profile picture and name
                const Text(
                  'ලින්නා\nරු 1290.00/1kg\nFish Lanka', // Replace with your profile name
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(width: 35.0),
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
