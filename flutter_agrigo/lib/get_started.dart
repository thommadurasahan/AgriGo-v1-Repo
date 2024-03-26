import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GetStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetStart'),
          backgroundColor: const Color.fromARGB(255, 14, 214, 21),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26,
            vertical: 62,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 327,
                width: 296,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/User.png",
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 14, 214, 21),
                  minimumSize: Size(double.infinity, 57),
                ),
                child: Text("ආරම්භ කරන්න"),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  minimumSize: Size(double.infinity, 57),
                ),
                child: Text("Login"),
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
