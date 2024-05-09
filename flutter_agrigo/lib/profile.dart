import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('User profile'),
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 24),
                const CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('assets/Userget.png'),
                ),
                const SizedBox(height: 20.0),

                // User text (replace with actual user data)
                Text(
                  "User",
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),

                const SizedBox(height: 20.0),

                // User information sections
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Name:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            ' Nihal Gunarathne', // Replace with actual user name
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Mobile Number:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            ' 0774896127', // Replace with actual user name
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Email:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            ' nihalg@example.com', // Replace with actual email
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20.0),

                // Edit profile button
                Container(
                  width: 180,
                  height: 55,
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle edit profile action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF25DA15),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
