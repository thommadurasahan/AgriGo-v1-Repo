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
          padding: const EdgeInsets.symmetric(
            horizontal: 26,
            vertical: 72,
          ),
          child: Column(
            children: [
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
              const Spacer(
                flex: 56,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpSin()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color.fromARGB(255, 238, 232, 232),
                ),
                child: const Text(
                  "ලියාපදිංචි වන්න",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginSin()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color(0xFF25DA15),
                ),
                child: const Text(
                  "නැවත ඇතුළු වන්න",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomeSin()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color(0xFF25DA15),
                ),
                child: const Text(
                  "මඟ හරින්න",
                  style: TextStyle(color: Colors.white),
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
