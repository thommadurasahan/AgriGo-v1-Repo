import 'package:flutter/material.dart';
import 'package:flutter_agrigo/home_sin.dart';
import 'package:flutter_agrigo/menu.dart';
import 'package:flutter_agrigo/notification.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF25DA15),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              "Categories",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageButton(
                imagePath: 'assets/VegiC.png',
                onPressed: () {
                  // Handle button press action
                },
              ),
              ImageButton(
                imagePath: 'assets/FruitC.png',
                onPressed: () {
                  // Handle button press action
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageButton(
                imagePath: 'assets/FishC.png',
                onPressed: () {
                  // Handle button press action
                },
              ),
              ImageButton(
                imagePath: 'assets/SpicesC.png',
                onPressed: () {
                  // Handle button press action
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageButton(
                imagePath: 'assets/ExportC.png',
                onPressed: () {
                  // Handle button press action
                },
              ),
              ImageButton(
                imagePath: 'assets/OthersC.png',
                onPressed: () {
                  // Handle button press action
                },
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
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
        currentIndex: 1,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeSin()),
              );
              break;
            case 1:
              // Do nothing if already on Categories page
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notifications()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuPage()),
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
}

class ImageButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const ImageButton({Key? key, required this.imagePath, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
