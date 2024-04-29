import 'package:flutter/material.dart';

class LanguageSelection extends StatefulWidget {
  const LanguageSelection({super.key});

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<LanguageSelection> {
  bool isSelectedSwitch1 = false;
  bool isSelectedSwitch2 = false;

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 429,
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 85),
          child: Column(
            children: [
              Text(
                "Select your language",
                style: TextStyle(
                  color: Colors.green.shade800, 
                  fontWeight: FontWeight.bold,
                  fontSize: 24, 
                ),
              ),
              
              const Spacer(flex: 48),

              Padding(
                padding: const EdgeInsets.only(left: 23, right: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Default (සිංහල)",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Switch(
                      value: isSelectedSwitch1,
                      onChanged: (value) {
                        setState(() {
                          isSelectedSwitch1 = value;
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
                padding: const EdgeInsets.only(left: 23, right: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                  // Add your action here
                },

                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color(0xFF25DA15), 
                ),

                child: const Text("Next",
                style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
