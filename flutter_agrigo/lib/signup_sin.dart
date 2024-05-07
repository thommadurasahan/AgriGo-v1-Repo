import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_agrigo/firebase_options.dart';
import 'package:flutter_agrigo/get_started_sin.dart';

class SignUpSin extends StatefulWidget {
  const SignUpSin({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUpSin> {
  // Text field controllers for user input
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  bool _agreedToTerms = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 85),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Register",
              style: TextStyle(
                color: Colors.green.shade800,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'අප වෙත අලුත් නම් ඔබගේ විද්‍යුත් ලිපිනය තහවුරු කර ලියපදිංචිය සම්පූර්ණ කිරීමට ඉදිරියට යන්න',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black,
              ),
            ),
            // Enter Email
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'විද්‍යුත් ලිපිනය',
                labelStyle: TextStyle(fontSize: 12),
              ),
              enableSuggestions: false,
              autocorrect: false,
              // Set the email keyboard to show the @ sign
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 18),
            // Comfirm Email
            ElevatedButton(
              onPressed: () {
                // Add your action here
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: const Color(0xFF25DA15),
              ),
              child: const Text(
                "තහවුරු කරන්න",
                style: TextStyle(color: Colors.white),
              ),
            ),
            // Enter First Name
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'නම',
                labelStyle: TextStyle(fontSize: 12),
              ),
            ),
            // Enter Last Name
            TextField(
              controller: _lastNameController,
              decoration: const InputDecoration(
                labelText: 'දුරකථන අංකය',
                labelStyle: TextStyle(fontSize: 12),
              ),
            ),
            // Enter Password
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'මුරපදය',
                labelStyle: TextStyle(fontSize: 12),
              ),
              // Hide the password
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
            const SizedBox(height: 18),
            // Checkbox for Terms and Conditions
            CheckboxListTile(
              title: const Text(
                'ඔබගේ සේවා කොන්දේසි සහ ප්‍රථිපත්ති කියවා එකග වන අතර මාගේ දත්ත භාවිතා කිරීමට කැමැත්ත ලබා දේ.',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                ),
              ),
              value: _agreedToTerms,
              onChanged: (value) => setState(() => _agreedToTerms = value!),
              activeColor: const Color(0xFF25DA15),
            ),
            // Sign Up Button
            ElevatedButton(
              onPressed: () async {
                // Add functionality to sign up the user
                await Firebase.initializeApp(
                  options: DefaultFirebaseOptions.currentPlatform,
                );
                final email = _emailController.text;
                final password = _passwordController.text;

                await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: email, password: password);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: const Color(0xFF25DA15),
              ),
              child: const Text(
                'ලියාපදිංචි වන්න',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GetStartSin()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color.fromARGB(255, 238, 232, 232),
                ),
                child: const Text('පෙර')),
          ],
        ),
      ),
    );
  }
}
