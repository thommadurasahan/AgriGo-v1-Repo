import 'package:flutter/material.dart';

class LogInSin extends StatefulWidget {
  const LogInSin({super.key});

  @override
  State<LogInSin> createState() => _LogInSinState();
}

class _LogInSinState extends State<LogInSin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Wrap Column with SingleChildScrollView
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 85),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "පවතින ගිණුම භාවිත කිරීම",
              style: TextStyle(
                color: Colors.green.shade800,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 24),
            const CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('assets/Userget.png'),
            ),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'විද්‍යුත් ලිපිනය',
                  labelStyle: TextStyle(fontSize: 12),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'මුරපදය',
                ),
              ),
            ),
            Container(
              width: 180,
              height: 55,
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF25DA15),
                ),
                child: const Text(
                  'ලොග් වන්න',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
