import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 429,
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 78),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 7),
              Text("Welcome to AgriGO",
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  )),
              const SizedBox(height: 24),
              Container(
                width: 351,
                margin: const EdgeInsets.only(left: 4, right: 3),
                child: Text(
                  "Please enter your mobile number",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const Spacer(flex: 37),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 3),
                  child: Text(
                    "දුරකථන අංකය",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              _buildPhoneNumberInput(context),
              const Spacer(flex: 62),
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
                child: const Text(
                  "NEXT",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 14),
              ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Colors.white,
                ),
                child: const Text("SKIP"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPhoneNumberInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/Flag.png",
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          const SizedBox(width: 10),
          const SizedBox(
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter phone number",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
