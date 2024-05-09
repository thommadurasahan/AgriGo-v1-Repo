import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
        backgroundColor: Color(0xFF25DA15),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Privacy Policy",
              style: TextStyle(
                color: Color.fromARGB(255, 46, 125, 50),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "At Agrigo, we are committed to protecting your privacy. Any personal information you provide to us will be used only for the purpose of facilitating transactions and improving our services. We may collect data such as your name, email address, and location for account creation and communication purposes. This information will not be shared with third parties without your consent unless required by law. We implement security measures to protect your data, but users should be aware of the inherent risks of transmitting information over the internet. By using Agrigo, you consent to the terms of this privacy policy.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
