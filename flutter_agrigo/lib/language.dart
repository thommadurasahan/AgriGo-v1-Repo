import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Language> {
  bool isSelectedSwitch = false;
  bool isSelectedSwitch1 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Language'),
          backgroundColor: const Color.fromARGB(255, 14, 214, 21),
        ),
        body: Container(
          width: 429,
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 85),
          child: Column(
            children: [
              Text(
                "Select your language",
                style: Theme.of(context).textTheme.headline4,
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
                      value: isSelectedSwitch1,
                      onChanged: (value) {
                        setState(() {
                          isSelectedSwitch1 = value;
                        });
                      },
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
                child: Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
