import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_agrigo/categories.dart';
import 'package:flutter_agrigo/menu.dart';
import 'package:flutter_agrigo/notification.dart';

const Color agriGoGreen = Color(0xFF25DA15);

class HomeSin extends StatefulWidget {
  const HomeSin({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeSin> {
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, // Distribute buttons evenly
                  children: [
                    SizedBox(
                      width: 120.0, // Adjust width as needed
                      height: 120.0,
                      child: ImageButton(
                        imagePath: 'assets/Vegitable.png',
                        onPressed: () {
                          // Handle button press action
                        },
                      ),
                    ),
                    const SizedBox(width: 14),
                    SizedBox(
                      width: 120.0, // Adjust width as needed
                      height: 120.0,
                      child: ImageButton(
                        imagePath: 'assets/Fruit.png',
                        onPressed: () {
                          // Handle button press action
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: 120.0, // Adjust width as needed
                      height: 120.0,
                      child: ImageButton(
                        imagePath: 'assets/Fish.png',
                        onPressed: () {
                          // Handle button press action
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: 120.0, // Adjust width as needed
                      height: 120.0,
                      child: ImageButton(
                        imagePath: 'assets/Spices.png',
                        onPressed: () {
                          // Handle button press action
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: 120.0, // Adjust width as needed
                      height: 120.0,
                      child: ImageButton(
                        imagePath: 'assets/Export.png',
                        onPressed: () {
                          // Handle button press action
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: 120.0, // Adjust width as needed
                      height: 120.0,
                      child: ImageButton(
                        imagePath: 'assets/Others.png',
                        onPressed: () {
                          // Handle button press action
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Added fixed type
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
        currentIndex: _selectedIndex, // Set the current index
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update the selected index
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
                MaterialPageRoute(builder: (context) => const MenuPage()),
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
