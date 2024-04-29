import 'package:flutter/material.dart';

class CheckNumber extends StatelessWidget {
  const CheckNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            const SizedBox(height: 250),
            Expanded(
              child: SingleChildScrollView(
                child: _buildFour(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFour(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 11,
        right: 14,
        bottom: 249,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 17,
        vertical: 31,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: const Color(0xFFDDDDDD), // Change color as needed
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 68),
            child: Text(
              "අංකය පරික්ශා කිරීම",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold, // Apply bold font weight
              ),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: TextField(
              textAlign: TextAlign.center, // Align text to the center
              decoration: const InputDecoration(
                border:
                    OutlineInputBorder(), // Add a border around the TextField
              ),
              onTap: () {
                // Navigate to the desired screen when tapped
                //// Navigator.push(context, MaterialPageRoute(builder: (context) => YourNextScreen()));
              },
              readOnly: true, // Make the TextField read-only
              controller: TextEditingController(
                  text: "(+94)-"
                      " -"
                      " -"
                      " -"
                      " -"
                      " -"
                      " -"
                      " -"
                      " " // Set initial text
                  ),
              style: const TextStyle(fontSize: 25), // Change style as needed
            ),
          ),
          const SizedBox(height: 30),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "ඔබේ දුරකතන අංකය නිවැරැදි ද?",
              style: TextStyle(fontSize: 16), // Change style as needed
            ),
          ),
          const SizedBox(height: 21),
          const SizedBox(height: 21),
          ElevatedButton(
            onPressed: () {}, // Add onPressed logic as needed
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors
                  .green, // Make the button transparent to show container's background color
            ),
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                "නිවැරැදියි",
                style:
                    TextStyle(color: Colors.white), // Set text color to white
              ),
            ),
          ),
          const SizedBox(height: 27),
          GestureDetector(
            onTap: () {
              // Add your click logic here
            },
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                "සංස්කරණය කරන්න",
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration
                      .underline, // Add underline decoration to indicate clickability
                ),
              ),
            ),
          ),
          const SizedBox(height: 37),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: CheckNumber(),
  ));
}
