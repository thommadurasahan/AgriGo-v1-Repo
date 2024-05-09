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
          width: 429,
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 85),
          child: Column(
            children: [
              Text(
                "Select Your Language",
                style: TextStyle(
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const Spacer(flex: 48),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "සිංහල",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Switch(
                      value: isSelectedSwitch1,
                      onChanged: (value) {
                        setState(() {
                          isSelectedSwitch1 = value;
                          if (value) {
                            isSelectedSwitch2 = false;
                          }
                        });
                      },
                      activeTrackColor: const Color(0xFF25DA15),
                      activeColor: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "English",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Switch(
                      value: isSelectedSwitch2,
                      onChanged: (value) {
                        setState(() {
                          isSelectedSwitch2 = value;
                          if (value) {
                            isSelectedSwitch1 = false;
                          }
                        });
                      },
                      activeTrackColor: const Color(0xFF25DA15),
                      activeColor: Colors.white,
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 51),
              const SizedBox(height: 35),
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
                  minimumSize: const Size(296, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color(0xFF25DA15),
                ),
                child: const Text(
                  "GO",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
