import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Notifications",
                style: TextStyle(
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0), 
                child: Container(
                  color: Color(0xFF25DA15), 
                  width: 400,
                  height: 630,
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
