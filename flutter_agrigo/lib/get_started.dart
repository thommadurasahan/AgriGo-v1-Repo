import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GetStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
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
              Spacer(
                flex: 56,
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                child: Text("ආරම්භ කරන්න",
                style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                minimumSize: Size(350, 50),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Color.fromARGB(255, 238, 232, 232),
               ),
               ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                child: Text("Register",
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
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                child: Text("Log in",
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
              Spacer(
                flex: 43,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
