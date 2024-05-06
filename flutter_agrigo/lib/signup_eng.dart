import 'package:flutter/material.dart';

class SignUpEng extends StatefulWidget {
  const SignUpEng({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUpEng> {
  // Text field controllers for user input
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  bool _agreedToTerms = false;

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
              'If you are new to the AgriGo app confirm your email address and complete the registration',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
            // Enter Email
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email Address',
                labelStyle: TextStyle(fontSize: 14),
              ),
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
                "Confirm",
                style: TextStyle(color: Colors.white),
              ),
            ),
            // Enter First Name
            TextField(
              controller: _firstNameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(fontSize: 14),
              ),
            ),
            // Enter Last Name
            TextField(
              controller: _lastNameController,
              decoration: const InputDecoration(
                labelText: 'Telephone Number',
                labelStyle: TextStyle(fontSize: 14),
              ),
            ),
            // Enter Password
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(fontSize: 14),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 18),
            // Checkbox for Terms and Conditions
            CheckboxListTile(
              title: const Text(
                'I have read and agree to your terms and conditions and I permit to use of my data.',
                style: TextStyle(
                  fontSize: 14.0,
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
                if (_agreedToTerms) {
                  // If agreed to terms, process user sign up
                } else {
                  // Show error message if terms not agreed to
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: const Color(0xFF25DA15),
              ),
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
