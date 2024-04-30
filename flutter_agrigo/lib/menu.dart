import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

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
