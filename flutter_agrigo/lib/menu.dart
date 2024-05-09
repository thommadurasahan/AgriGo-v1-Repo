import 'package:flutter/material.dart';
import 'package:flutter_agrigo/categories.dart';
import 'package:flutter_agrigo/home_sin.dart';
import 'package:flutter_agrigo/notification.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0; // Initialize the selected index

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Menu",
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  )),
              const SizedBox(height: 24),
              Expanded(
                child: ListView(
                  children: [
                    _buildMenuItem(context, "Your Profile "),
                    const Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                    _buildMenuItem(context, "Library"),
                    const Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                    _buildMenuItem(context, "Terms of Use"),
                    const Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                    _buildMenuItem(context, "Privacy Policy"),
                    const Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                    _buildMenuItem(context, "About Us"),
                  ],
                ),
              ),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeSin()),
                );
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
                  MaterialPageRoute(
                      builder: (context) => const Notifications()),
                );
                break;
              case 3:
                // Handle navigation to Menu screen
                // Replace with your desired navigation logic
                break;
              default:
                // Handle unexpected index
                break;
            }
          },
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title) {
    return ListTile(
      title: Row(
        children: [
          const Icon(Icons.arrow_forward),
          const SizedBox(width: 10),
          Text(title),
        ],
      ),
      onTap: () {
        // Add your action here
      },
    );
  }
}
