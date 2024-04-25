import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 85),
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
            SizedBox(height: 18),
            Text(
                 'අප වෙත අලුත් නම් ඔබගේ විද්‍යුත් ලිපිනය තහවුරු කර ලියපදිංචිය සම්පූර්ණ කිරීමට ඉදිරියට යන්න',
                  style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                  ),
            ),
            // Enter Email
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'විද්‍යුත් ලිපිනය',
              labelStyle: TextStyle(fontSize: 12),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 18),
            // Comfirm Email
            ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                child: Text("තහවුරු කරන්න",
                style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                minimumSize: Size(350, 40),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Color(0xFF25DA15),
               ),
              ),
            // Enter First Name
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(labelText: 'මුල් නම',
              labelStyle: TextStyle(fontSize: 12),
              ),
            ),
            // Enter Last Name
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(labelText: 'අවසාන නම',
              labelStyle: TextStyle(fontSize: 12),
              ),
            ),
            // Enter Password
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'මුරපදය',
              labelStyle: TextStyle(fontSize: 12),
              ),
              obscureText: true,
            ),
            SizedBox(height: 18),
            // Checkbox for Terms and Conditions
            CheckboxListTile(
              title: Text('ඔබගේ සේවා කොන්දේසි සහ ප්‍රථිපත්ති කියවා එකග වන අතර මාගේ දත්ත භාවිතා කිරීමට කැමැත්ත ලබා දේ.',
                      style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
              value: _agreedToTerms,
              onChanged: (value) => setState(() => _agreedToTerms = value!),
              activeColor: Color(0xFF25DA15),
            ),
            // Sign Up Button
            ElevatedButton(
              onPressed: () {
                // Add functionality to sign up the user
                if (_agreedToTerms) {
                  // If agreed to terms, process user sign up
                } else {
                  // Show error message if terms not agreed to
                }
              },
              child: Text('ලියාපදිංචි වන්න',
              style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(350, 40),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Color(0xFF25DA15),
               ),
            ),
          ],
        ),
      ),
    );
  }
}
