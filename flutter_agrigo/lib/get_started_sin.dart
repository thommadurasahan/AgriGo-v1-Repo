import 'package:flutter/material.dart';
import 'package:flutter_agrigo/signup_sin.dart';
import 'package:flutter_agrigo/login_sin.dart';
import 'package:flutter_agrigo/home_sin.dart';

class GetStartSin extends StatelessWidget {
  const GetStartSin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),

          // Column
          child: Column(
            children: [
              // Title
              Text("AgriGO වෙත පිළිගන්නෙමු",
                  // Set the text style
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
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
                          builder: (context) => const SignUpSin()));
                },

                // Set the style of the button
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(400, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color(0xFF25DA15),
                ),

                // Set the button text
                child: const Text(
                  "ලියාපදිංචි වන්න",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),

              const SizedBox(height: 16),

              // LogIn Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogInSin()));
                },

                // Set the style of the button
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(400, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color(0xFF25DA15),
                ),

                // Set the button text
                child: const Text(
                  "නැවත ඇතුළු වන්න",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),

              const SizedBox(height: 16),

              // Skip Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomeSin()));
                },

                // Set the style of the button
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(400, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color.fromARGB(255, 238, 232, 232),
                ),

                // Set the button text
                child: const Text(
                  "මඟ හරින්න",
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
