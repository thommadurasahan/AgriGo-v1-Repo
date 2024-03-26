import 'package:flutter/material.dart';

class EnterNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Number'),
          backgroundColor: const Color.fromARGB(255, 14, 214, 21),
        ),
        body: Container(
          width: 429,
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 78),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 7),
              Text(
                "Welcome to AgriGO",
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 24),
              Container(
                width: 351,
                margin: EdgeInsets.only(left: 4, right: 3),
                child: Text(
                  "කරුණාකර ඔබගේ ජංගම දුරකථන අංකය ඇතුලත් කරන්න",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Spacer(flex: 37),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 3),
                  child: Text(
                    "දුරකථන අංකය",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 33),
              _buildPhoneNumberInput(context),
              Spacer(flex: 62),
              ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                child: Text("ඊළඟ"),
              ),
              SizedBox(height: 14),
              ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                child: Text("මඟ හරින්න"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPhoneNumberInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/User.png",
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          SizedBox(width: 10),
          Container(
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