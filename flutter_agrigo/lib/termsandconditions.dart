import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms & Conditions'),
        backgroundColor: const Color(0xFF25DA15),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Term & Conditions",
              style: TextStyle(
                color: Color.fromARGB(255, 46, 125, 50),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Welcome to Agrigo! By using our mobile app, you agree to the following terms and conditions. Agrigo provides a platform for managing the cost of agricultural products, facilitating efficient transactions between buyers and sellers. Users must be aware that Agrigo acts solely as a facilitator and does not take responsibility for the quality, quantity, or any other aspect of the agricultural products listed on the platform. Users are solely responsible for verifying the accuracy of information provided by other users and for any transactions conducted through the app. Agrigo reserves the right to suspend or terminate accounts found in violation of these terms. By using Agrigo, you consent to our privacy policy and agree to receive communications from us regarding your account and transactions.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
