import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

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
          title: const Text('Language'),
          backgroundColor: const Color.fromARGB(255, 14, 214, 21),
        ),
        body: Container(
          width: 429,
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 85),
          child: Column(
            children: [
              Text(
                "Select your language",
                style: Theme.of(context).textTheme.headlineMedium,
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
              const Spacer(flex: 51),
              const SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                child: const Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
