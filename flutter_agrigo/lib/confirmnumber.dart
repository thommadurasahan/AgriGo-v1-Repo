import 'package:flutter/material.dart';

class ConfirmNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 429,
          child: Column(
            children: [
              SizedBox(height: 250),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildFour(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFour(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 11,
        right: 13,
        bottom: 249,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 11,
        vertical: 32,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
         color: Color(0xFFDDDDDD), // Change color as needed
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
  alignment: Alignment.center,
  child: Padding(
    padding: EdgeInsets.only(left: 75),
    child: Text(
      "අංකය තහවුරු කිරීම",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold, // Apply bold font weight
      ),
    ),
  ),
),

          SizedBox(height: 16),
          SizedBox(
            width: 380,
            child: Text(
              "කරුණාකර SMS මඟින් ඔබට එවන ලද OTP අංකය ඇතුළත් කරන්න",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16), // Change style as needed
            ),
          ),

         SizedBox(height: 65),
TextField(
  decoration: InputDecoration(
    hintText: 'OTP number', // Add your hint text here
   border: OutlineInputBorder() , // Add border for the TextField
  ),
),

          SizedBox(height: 34),
          Text(
            "කාලය නැවත සකස් වීම : 01:06",
            style: TextStyle(fontSize: 20), // Change style as needed
          ),
        SizedBox(height: 28),

       Container(
  child: ElevatedButton(
    onPressed: () {
      // Add onPressed logic as needed
    },
    style: ElevatedButton.styleFrom(
      primary: Colors.green, // Set the background color to green
    ),
    child: Text("තහවුරු කරන්න"),
  ),
),


        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ConfirmNumber(),
  ));
}
