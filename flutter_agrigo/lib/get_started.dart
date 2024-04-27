import 'package:flutter/material.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

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
                  // Add your action here
                },
                style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 50),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: const Color.fromARGB(255, 238, 232, 232),
               ),
                child: const Text("ආරම්භ කරන්න",
                style: TextStyle(color: Colors.black),
                ),
               ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 50),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: const Color(0xFF25DA15),
               ),
                child: const Text("Register",
                style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 50),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: const Color(0xFF25DA15),
               ),
                child: const Text("Log in",
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
