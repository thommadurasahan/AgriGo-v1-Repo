import 'package:flutter/material.dart';
import 'package:flutter_agrigo/get_started_eng.dart';
import 'package:flutter_agrigo/get_started_sin.dart';

class LanguageSelection extends StatefulWidget {
  const LanguageSelection({super.key});

  @override
  State<LanguageSelection> createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
  // Switches for Language Selection
  bool isSelectedSwitch1 = true;
  bool isSelectedSwitch2 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),

          // Column
          child: Column(
            children: [
              // Title
              Text(
                "Select Your Language",
                style: TextStyle(
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),

              // Space between title and options
              const Spacer(flex: 50),

              // Sinhala language selection option
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Sinhala Language Text
                    const Text(
                      "සිංහල",
                      style: TextStyle(fontSize: 32, color: Colors.black),
                    ),

                    // Switch for Sinhala Language
                    Switch(
                      value: isSelectedSwitch1,
                      onChanged: (value) {
                        setState(() {
                          isSelectedSwitch1 = value;
                          if (value) {
                            isSelectedSwitch2 = false;
                            isSelectedSwitch1 = true;
                          }
                        });
                      },

                      // Set color of the switch according to the state
                      activeTrackColor: const Color(0xFF25DA15),
                      activeColor: Colors.white,
                    ),
                  ],
                ),
              ),

              // Space between options and button
              const SizedBox(height: 16),

              // English language selection option
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // English Language Text
                    const Text(
                      "English",
                      style: TextStyle(fontSize: 32, color: Colors.black),
                    ),

                    // Switch for English Language
                    Switch(
                      value: isSelectedSwitch2,
                      onChanged: (value) {
                        setState(() {
                          isSelectedSwitch2 = value;
                          if (value) {
                            isSelectedSwitch1 = false;
                            isSelectedSwitch2 = true;
                          }
                        });
                      },

                      // Set color of the switch according to the state
                      activeTrackColor: const Color(0xFF25DA15),
                      activeColor: Colors.white,
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 50),

              // GO Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Get Started screen according to the selected Language
                  if (isSelectedSwitch2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GetStartEng()));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GetStartSin()));
                  }
                },

                // Add style to the button
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(400, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color(0xFF25DA15),
                ),

                // Button Text
                child: const Text(
                  "GO",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
