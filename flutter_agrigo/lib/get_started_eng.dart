import 'package:flutter/material.dart';
import 'package:flutter_agrigo/signup_eng.dart';
import 'package:flutter_agrigo/login_eng.dart';
import 'package:flutter_agrigo/home_eng.dart';

class GetStartEng extends StatelessWidget {
  const GetStartEng({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(
            horizontal: 26,
            vertical: 72,
          ),
          child: Column(
            children: [
              Text("Welcome to AgriGO",
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  )),
              const Spacer(
                flex: 56,
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 250,
                width: 250,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.asset(
                      "assets/Userget.png",
                      height: 296,
                      width: 296,
                      alignment: Alignment.topCenter,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpEng()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(296, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color(0xFF25DA15),
                ),
                child: const Text(
                  "REGISTER",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogInEng()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(296, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color(0xFF25DA15),
                ),
                child: const Text(
                  "LOG IN",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomeEng()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(296, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color.fromARGB(255, 238, 232, 232),
                ),
                child: const Text(
                  "SKIP",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              const Spacer(
                flex: 43,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
