import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

const Color agriGoGreen = Color(0xFF25DA15);

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentImageIndex = 0;
  final List<String> _imagePaths = [
    'assets/Slider3.jpg',
    'assets/Slider2.png',
    'assets/Slider4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: agriGoGreen,
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
        backgroundColor: agriGoGreen,
      ),
      body: SingleChildScrollView(
        // Wrap the content with SingleChildScrollView
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
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
            const SizedBox(height: 16),
            const Text(
              "Pinned Items",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: 370.0,
              height: 160.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(10.0), // Adjust corner radius
              ),
              child: const Stack(
                // To position the "Pins" on top of the box
                children: [
                  // Your "Pins" widget goes here
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Categories",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // Distribute buttons evenly
              children: [
                ImageButton(
                  imagePath: 'assets/Vegitable.png',
                  onPressed: () {
                    // Handle button press action
                  },
                ),
                ImageButton(
                  imagePath: 'assets/Fruit.png',
                  onPressed: () {
                    // Handle button press action
                  },
                ),
                ImageButton(
                  imagePath: 'assets/Fish.png',
                  onPressed: () {
                    // Handle button press action
                  },
                ),
              ],
            ),
            const SizedBox(height: 50),

            // Your remaining content widgets go here (These will also be scrollable)
          ],
        ),
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0), // Optional rounded corners
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover, // Ensure image covers the container
      ),
    );
  }
}

class ImageButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const ImageButton(
      {super.key, required this.imagePath, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Use InkWell for tap detection
      onTap: onPressed,
      child: Container(
        width: 110,
        height: 110,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath), // Load image from assets
            fit: BoxFit.cover, // Adjust image fit as needed
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
