import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Language> {
  bool isSelectedSwitch1 = false;
  bool isSelectedSwitch2 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 429,
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 85),
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
              Spacer(flex: 48),
              Padding(
                padding: EdgeInsets.only(left: 23, right: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
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
                      activeTrackColor: Color(0xFF25DA15),
                      activeColor: Colors.white,   
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: EdgeInsets.only(left: 23, right: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
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
                      activeTrackColor: Color(0xFF25DA15),
                      activeColor: Colors.white,
                    ),
                  ],
                ),
              ),
              Spacer(flex: 51),
              SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                child: Text("Next",
                style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Color(0xFF25DA15), 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
