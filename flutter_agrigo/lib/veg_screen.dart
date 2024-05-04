import 'package:flutter/material.dart';

class VegScreen extends StatefulWidget {
  @override
  _VegScreenState createState() => _VegScreenState();
}

class _VegScreenState extends State<VegScreen> {
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
             // Add spacing between profile picture and name
                Text(
                  'All Vegitables', // Replace with your profile name
                  style: TextStyle(fontSize: 20.0),
                ),
            SizedBox(width: 1.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align profile on right
              children: [
                // Replace CircleAvatar with Image
                Image.asset(
                  'assets/V1.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                SizedBox(width: 5.0), // Add spacing between profile picture and name
                Text(
                  'වට්ටක්කා\nරු 350.00/1kg\nSenarathna & Sons', // Replace with your profile name
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(width: 20.0),
                Image.asset(
                  'assets/Compass.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
              ],
            ),
            Divider(
              thickness: 1.0, // Adjust thickness as needed
              color: Colors.grey, // Adjust color as needed
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align profile on right
              children: [
                // Replace CircleAvatar with Image
                Image.asset(
                  'assets/V2.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                SizedBox(width: 5.0), // Add spacing between profile picture and name
                Text(
                  'බී ලූණු\nරු 280.00/1kg\nNawarathna Foods', // Replace with your profile name
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(width: 20.0),
                Image.asset(
                  'assets/Compass.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
              ],
            ),
            Divider(
              thickness: 1.0, // Adjust thickness as needed
              color: Colors.grey, // Adjust color as needed
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align profile on right
              children: [
                // Replace CircleAvatar with Image
                Image.asset(
                  'assets/V3.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                SizedBox(width: 5.0), // Add spacing between profile picture and name
                Text(
                  'වට්ටක්කා\nරු 340.00/1kg\nNew Foods Lanka', // Replace with your profile name
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(width: 27.0),
                Image.asset(
                  'assets/Compass.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
              ],
            ),
            Divider(
              thickness: 1.0, // Adjust thickness as needed
              color: Colors.grey, // Adjust color as needed
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align profile on right
              children: [
                // Replace CircleAvatar with Image
                Image.asset(
                  'assets/V4.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                SizedBox(width: 5.0), // Add spacing between profile picture and name
                Text(
                  'බීට් රූට්\nරු 460.00/1kg\nNimantha Vegetables', // Replace with your profile name
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(width: 8.0),
                Image.asset(
                  'assets/Compass.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
              ],
            ),
            Divider(
              thickness: 1.0, // Adjust thickness as needed
              color: Colors.grey, // Adjust color as needed
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align profile on right
              children: [
                // Replace CircleAvatar with Image
                Image.asset(
                  'assets/V5.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
                SizedBox(width: 5.0), // Add spacing between profile picture and name
                Text(
                  'බණ්ඩක්කා\nරු 370.00/1kg\nVegetables Lanka', // Replace with your profile name
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(width: 35.0),
                Image.asset(
                  'assets/Compass.png',
                  width: 120.0, // Adjust width as needed
                  height: 120.0, // Adjust height as needed
                ),
              ],
            ),
            Divider(
              thickness: 1.0, // Adjust thickness as needed
              color: Colors.grey, // Adjust color as needed
            ),
          ],
        ),
      ),
    );
  }
}
