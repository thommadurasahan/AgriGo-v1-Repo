import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_agrigo/firebase_options.dart';
import 'package:flutter_agrigo/get_started_eng.dart';

class SignUpEng extends StatefulWidget {
  const SignUpEng({super.key});

  @override
  _SignUpEngState createState() => _SignUpEngState();
}

class _SignUpEngState extends State<SignUpEng> {
  // Field controllers for user input
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
              "Creating a New Profile",
              style: TextStyle(
                color: Colors.green.shade800,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'If you are new to us, register by providing your name, phone number, email address and a new password.',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
            // Enter Name
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(fontSize: 12),
              ),
            ),
            // Enter Phone Number
            TextField(
              controller: _numberController,
              // Set the phone number keyboard to show the number pad
              keyboardType: TextInputType.phone,
              // Only allow numbers
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(10)
              ],
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                labelStyle: TextStyle(fontSize: 12),
              ),
            ),
            // Enter Email
            TextField(
              controller: _emailController,
              enableSuggestions: false,
              autocorrect: false,
              // Set the email keyboard to show the @ sign
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(fontSize: 12),
              ),
            ),
            // Enter Password
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
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
                'I agree to your terms of Service and I permit to use of my data.',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              value: _agreedToTerms,
              onChanged: (value) => setState(() => _agreedToTerms = value!),
              activeColor: const Color(0xFF25DA15),
            ),
            const SizedBox(height: 18),
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
                minimumSize: const Size(296, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: const Color(0xFF25DA15),
              ),
              child: const Text(
                'REGISTER',
                style: TextStyle(fontSize: 16, color: Colors.white),
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
                          builder: (context) => const GetStartEng()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(296, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color.fromARGB(255, 238, 232, 232),
                ),
                child: const Text("Don't want to Regiter?")),
          ],
        ),
      ),
    );
  }
}
