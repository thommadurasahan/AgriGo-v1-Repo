import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF25DA15),
          body: Column( // Use Column for vertical layout
            children: [
              // Centered text at the top
              Padding(
                padding: const EdgeInsets.only(top: 20.0), // Add top padding
                child: Text(
                  "Categories",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
              ),
               SizedBox(height: 24),
              // Row to place image buttons horizontally with spacing
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribute evenly
                children: [
                  ImageButton(
                    imagePath: 'assets/VegiC.png',
                    onPressed: () {
                      // Handle button press action
                    },
                  ),
                  ImageButton(
                    imagePath: 'assets/FruitC.png', // Consider using different images
                    onPressed: () {
                      // Handle button press action
                    },
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribute evenly
                children: [
                  ImageButton(
                    imagePath: 'assets/FishC.png',
                    onPressed: () {
                      // Handle button press action
                    },
                  ),
                  ImageButton(
                    imagePath: 'assets/SpicesC.png', // Consider using different images
                    onPressed: () {
                      // Handle button press action
                    },
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribute evenly
                children: [
                  ImageButton(
                    imagePath: 'assets/ExportC.png',
                    onPressed: () {
                      // Handle button press action
                    },
                  ),
                  ImageButton(
                    imagePath: 'assets/OthersC.png', // Consider using different images
                    onPressed: () {
                      // Handle button press action
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const ImageButton({required this.imagePath, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell( // Use InkWell for tap detection
      onTap: onPressed,
      child: Container(
        width: 150,
        height: 150,
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
