import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        appBar: AppBar(
          title: Text('GetStart'),
          backgroundColor: const Color.fromARGB(255, 14, 214, 21),
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 78),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 7),
              Text(
                "Menu",
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 24),
              Expanded(
                child: ListView(
                  children: [
                    _buildMenuItem(context, "Your Profile"),
                    _buildMenuItem(context, "Library "),
                    _buildMenuItem(context, "Contact Us"),
                    _buildMenuItem(context, "About Us"),
                    _buildMenuItem(context, "Terms of Use"),
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
          Icon(Icons.arrow_forward),
          SizedBox(width: 10),
          Text(title),
        ],
      ),
      onTap: () {
        // Add your action here
      },
    );
  }
}
