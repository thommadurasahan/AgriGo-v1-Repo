import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_agrigo/categories.dart';
import 'package:flutter_agrigo/export_screen.dart';
import 'package:flutter_agrigo/fish_screen.dart';
import 'package:flutter_agrigo/fruit_screen.dart';
import 'package:flutter_agrigo/language_selection.dart';
import 'package:flutter_agrigo/menu.dart';
import 'package:flutter_agrigo/notification.dart';
import 'package:flutter_agrigo/others_screen.dart';
import 'package:flutter_agrigo/spices_screen.dart';
import 'package:flutter_agrigo/veg_screen.dart';

const Color agriGoGreen = Color(0xFF25DA15);

class HomeEng extends StatefulWidget {
  const HomeEng({super.key});

  @override
  State<HomeEng> createState() => _HomeEngState();
}

class _HomeEngState extends State<HomeEng> {
  int _currentImageIndex = 0;

  final List<String> _imagePaths = [
    'assets/Slider3.jpg',
    'assets/Slider2.png',
    'assets/Slider4.png',
  ];

  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Color
      backgroundColor: agriGoGreen,

      // The App Bar
      appBar: AppBar(
        // Logo
        title: const Text('AgriGO'),

        // Language Change Option
        actions: [
          IconButton(
            icon: Image.asset('assets/Compass.png'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LanguageSelection()),
              );
            },
          ),
        ],

        // App Bar Color
        backgroundColor: agriGoGreen,
      ),

      body: SingleChildScrollView(
        // Wrap the content with SingleChildScrollView
        child: Column(
          children: [
            const SizedBox(height: 2),

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

            const SizedBox(height: 10),

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
                    // Adjust corner radius
                    BorderRadius.circular(10.0),
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

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // Distribute buttons evenly
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      // Adjust width as needed
                      width: 120.0,
                      height: 120.0,
                      child: ImageButton(
                        imagePath: 'assets/VegeE.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VegScreen()),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 14),
                    SizedBox(
                      width: 120.0, // Adjust width as needed
                      height: 120.0,
                      child: ImageButton(
                        imagePath: 'assets/FruitE.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FruitScreen()),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: 120.0, // Adjust width as needed
                      height: 120.0,
                      child: ImageButton(
                        imagePath: 'assets/FishE.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FishScreen()),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: 120.0, // Adjust width as needed
                      height: 120.0,
                      child: ImageButton(
                        imagePath: 'assets/SpicesE.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SpicesScreen()),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: 110.0, // Adjust width as needed
                      height: 110.0,
                      child: ImageButton(
                        imagePath: 'assets/ExportsE.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ImportsScreen()),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: 110.0, // Adjust width as needed
                      height: 110.0,
                      child: ImageButton(
                        imagePath: 'assets/OthersE.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OthersScreen()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),

            // Your remaining content widgets go here (These will also be scrollable)
          ],
        ),
      ),

      // Home Screen Vavigation
      bottomNavigationBar: BottomNavigationBar(
        // Add fixed type
        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],

        // Set the current index
        currentIndex: _selectedIndex,

        onTap: (index) {
          setState(() {
            // Update the selected index
            _selectedIndex = index;
          });
          switch (index) {
            case 0:
              //Home
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Categories()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Notifications()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Menu()),
              );
              break;
            default:
              // Handle unexpected index
              break;
          }
        },
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        // Optinal rounded corners
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Image.asset(
        imagePath,
        // Ensure image covers the container
        fit: BoxFit.cover,
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
            // Load image from assets
            image: AssetImage(imagePath),
            // Adjust image fit as needed
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
