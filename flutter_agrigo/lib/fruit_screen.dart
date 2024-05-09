import 'package:flutter/material.dart';

class FruitScreen extends StatefulWidget {
  const FruitScreen({super.key});

  @override
  State<FruitScreen> createState() => _FruitScreenState();
}

class _FruitScreenState extends State<FruitScreen> {
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
              'All Fruits', // Replace with your profile name
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(width: 1.0),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align profile on right
              children: [
                // Replace CircleAvatar with Image
                Image.asset(
                  'assets/Fr1.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                const SizedBox(
                    width: 5.0), // Add spacing between profile picture and name
                const Text(
                  'ඇඹුල් කෙසෙල්\nරු 280.00/1kg\nNimal Fruits ', // Replace with your profile name
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
                  'assets/Fr2.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                const SizedBox(
                    width: 5.0), // Add spacing between profile picture and name
                const Text(
                  'කොමඩු\nරු 1460.00/1kg\nFresh Fruits', // Replace with your profile name
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
                  'assets/Fr3.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                const SizedBox(
                    width: 5.0), // Add spacing between profile picture and name
                const Text(
                  'අලිගැටපේර\nරු 660.00/1kg\nNew Fruit Lanka', // Replace with your profile name
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
                  'assets/Fr4.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                const SizedBox(
                    width: 5.0), // Add spacing between profile picture and name
                const Text(
                  'අල අඹ\nරු 480.00/1kg\nNavidu Fruits', // Replace with your profile name
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
                  'assets/Fr5.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                const SizedBox(
                    width: 5.0), // Add spacing between profile picture and name
                const Text(
                  'අන්නාසි\nරු 2460.00/1kg\nFruit Lanka', // Replace with your profile name
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
          ],
        ),
      ),
    );
  }
}
