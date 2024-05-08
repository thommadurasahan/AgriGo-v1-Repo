import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PageScreen extends StatefulWidget {
  const PageScreen({super.key});

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  int _currentImageIndex = 0;
  final List<String> _imagePaths = [
    'assets/Carrot2.jpeg',
    'assets/Slider2.png',
  ];

  Widget _buildImage(String imagePath) {
    return Image.asset(imagePath, fit: BoxFit.cover);
  }

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
            CarouselSlider(
              items: _imagePaths
                  .map((imagePath) => _buildImage(imagePath))
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                aspectRatio: 17 / 8,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentImageIndex = index;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _imagePaths.asMap().entries.map((entry) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentImageIndex == entry.key
                          ? Colors.white
                          : Colors.grey[400],
                    ),
                  ),
                );
              }).toList(),
            ),
            const Divider(
                // Add the horizontal line
                thickness: 4.0, // Adjust thickness as needed
                color: Colors.grey // Adjust color as needed
                ),
            const SizedBox(
                width: 1.0), // Add spacing between profile picture and name
            const Text(
              'නුවරඑළියේ හොඳම කැරට් අපෙන් අඩුම මිලට...     \n රු 950.00/1kg', // Replace with your profile name
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const Divider(
              // Add the horizontal line
              thickness: 4.0, // Adjust thickness as needed
              color: Colors.grey, // Adjust color as needed
            ),
            const Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align profile on right
              children: [
                // Add profile picture
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(
                      'assets/User.png'), // Replace with your asset path
                ),
                SizedBox(
                    width: 1.0), // Add spacing between profile picture and name
                Text(
                  '      Senarathna & Sons \n      Dambulla, SriLanka ', // Replace with your profile name
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            const Divider(
              // Add the horizontal line
              thickness: 4.0, // Adjust thickness as needed
              color: Colors.grey, // Adjust color as needed
            ),
            const Text(
              'දුරකතන අංකය : 0765695214                                            ', // Replace with your profile name
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const Divider(
              // Add the horizontal line
              thickness: 1.0, // Adjust thickness as needed
              color: Colors.white, // Adjust color as needed
            ),
            const Text(
              'ලිපිනය                  : 45/B, අනුරාධපුර පාර,කැකිරාව                 ', // Replace with your profile name
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const Divider(
              // Add the horizontal line
              thickness: 1.0, // Adjust thickness as needed
              color: Colors.white, // Adjust color as needed
            ),
            const Text(
              'අප ගැන                : ඔබට අවශ්‍ය සියලුම එළවලු තොග  \n                                  සහ සිල්ලර මිලට අප වෙතින් ලබා \n                                  ගත හැක.', // Replace with your profile name
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
