import 'package:flutter/material.dart';
import 'package:flutter_agrigo/home_eng.dart';
import 'package:flutter_agrigo/login_eng.dart';
import 'package:flutter_agrigo/signup_eng.dart';

class GetStartEng extends StatelessWidget {
  const GetStartEng({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 100),

          // Column
          child: Column(
            children: [
              // Title
              Text("Welcome to AgriGO",
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  )),

              // Space between title and image
              const Spacer(
                flex: 60,
              ),

              // Profile image
              Image.asset(
                "assets/Userget.png",
                height: 700,
                width: 700,
              ),

              // Space between image and buttons
              const Spacer(
                flex: 60,
              ),

              // Register Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpEng()));
                },

                // Styling the button
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(400, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color(0xFF25DA15),
                ),

                // Button text
                child: const Text(
                  "REGISTER",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),

              const SizedBox(height: 16),

              // LogIn Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogInEng()));
                },

                // Styling the button
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(400, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color(0xFF25DA15),
                ),

                // Button text
                child: const Text(
                  "LOG IN",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),

              const SizedBox(height: 16),

              // Skip Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomeEng()));
                },

                // Styling the button
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(400, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color.fromARGB(255, 238, 232, 232),
                ),

                // Button text
                child: const Text(
                  "SKIP",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
