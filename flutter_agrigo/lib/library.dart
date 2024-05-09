import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Library'),
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
              _buildCategoryHeader('Vegetables'),
              _buildPriceListWithShowMore(
                items: [
                  'Pumkin',
                  'Onion',
                  'Cabbage',
                  'Carrot',
                  // Add more vegetables here
                ],
                prices: [
                  'Rs. 800/kg',
                  'Rs. 760/kg',
                  'Rs. 480/kg',
                  'Rs. 590/kg',
                  // Add more prices here
                ],
                showAllItems: false,
              ),
              const SizedBox(height: 20.0),
              _buildCategoryHeader('Fruits'),
              _buildPriceListWithShowMore(
                items: [
                  'Papaya',
                  'Banana',
                  'Pineapple',
                  'Mango',
                  // Add more fruits here
                ],
                prices: [
                  'Rs. 900/kg',
                  'Rs. 580/kg',
                  'Rs. 1250/kg',
                  'Rs. 700/kg',
                  // Add more prices here
                ],
                showAllItems: false,
              ),
              const SizedBox(height: 20.0),
              _buildCategoryHeader('Fish'),
              _buildPriceListWithShowMore(
                items: [
                  'Tuna',
                  'Salmon',
                  'Shrimp',
                  'Mackerel',
                  // Add more fish here
                ],
                prices: [
                  'Rs. 800/kg',
                  'Rs. 1200/kg',
                  'Rs. 1000/kg',
                  'Rs. 600/kg',
                  // Add more prices here
                ],
                showAllItems: false,
              ),
              const SizedBox(height: 20.0),
              _buildCategoryHeader('Spices'),
              _buildPriceListWithShowMore(
                items: [
                  'Cinnamon',
                  'Chilli Powder',
                  'Turmeric',
                  'Black Pepper',
                  // Add more spices here
                ],
                prices: [
                  'Rs. 2000/kg',
                  'Rs. 1500/kg',
                  'Rs. 1800/kg',
                  'Rs. 1200/kg',
                  // Add more prices here
                ],
                showAllItems: false,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
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
          currentIndex: 0, // Set the initial index
          onTap: (index) {
            // Handle navigation
          },
        ),
      ),
    );
  }

  Widget _buildCategoryHeader(String category) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        category,
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
    );
  }

  Widget _buildPriceListWithShowMore({
    required List<String> items,
    required List<String> prices,
    required bool showAllItems,
  }) {
    const maxVisibleItems = 3;
    final showMoreButton = !showAllItems
        ? TextButton(
            onPressed: () {
              // Update the state to show all items
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey,
            ),
            child: const Text('Show More'),
          )
        : null;

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: showAllItems ? items.length : maxVisibleItems + 1,
      itemBuilder: (context, index) {
        if (index == maxVisibleItems && !showAllItems) {
          return showMoreButton!;
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              items[index],
              style: const TextStyle(fontSize: 16.0),
            ),
            Text(
              prices[index],
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        );
      },
    );
  }
}

void main() {
  runApp(const Library());
}
