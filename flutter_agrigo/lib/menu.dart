import 'package:flutter/material.dart';
import 'package:flutter_agrigo/categories.dart';
import 'package:flutter_agrigo/home_sin.dart';
import 'package:flutter_agrigo/notification.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
                    _buildMenuItem(context, "Your Profile"),
                    const Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                    _buildMenuItem(context, "Library "),
                    const Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                    _buildMenuItem(context, "Contact Us"),
                    const Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                    _buildMenuItem(context, "About Us"),
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
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Added fixed type
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.category),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.menu),
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
                  MaterialPageRoute(builder: (context) => HomeSin()),
                );
                break;
              case 1:
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Categories()),
              );
                break;
              case 2:
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notifications()),
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
