import 'package:flutter/material.dart';
import 'package:flutter_agrigo/language_selection.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();

    // Add a delay if needed before navigating
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the language selection screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LanguageSelection()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // Set the background color to green
        backgroundColor: Color(0xFF25DA15),

        // Center the Logo
        body: Center(
          // Add the Logo image
          child: Image(
            image: AssetImage('assets/Logo.png'),
            width: 150,
            height: 150,
          ),
        ),
      ),
    );
  }
}
