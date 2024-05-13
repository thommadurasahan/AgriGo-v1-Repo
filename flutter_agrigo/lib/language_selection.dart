import 'package:flutter/material.dart';
import 'package:flutter_agrigo/get_started_eng.dart';
import 'package:flutter_agrigo/get_started_sin.dart';

class LanguageSelection extends StatefulWidget {
  const LanguageSelection({super.key});

  @override
  State<LanguageSelection> createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
  bool isSelectedSwitch1 = true;
  bool isSelectedSwitch2 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
          child: Column(
            children: [
              Text(
                "Select Your Language",
                style: TextStyle(
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
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
                    const Text(
                      "සිංහල",
                      style: TextStyle(fontSize: 32, color: Colors.black),
                    ),
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
                    const Text(
                      "English",
                      style: TextStyle(fontSize: 32, color: Colors.black),
                    ),
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
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(400, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color(0xFF25DA15),
                ),
                child: const Text(
                  "GO",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
