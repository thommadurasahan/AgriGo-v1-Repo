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
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: const Color.fromARGB(255, 14, 214, 21),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // text
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
              decoration: InputDecoration(labelText: 'විද්‍යුත් ලිපිනය'),
              keyboardType: TextInputType.emailAddress,
            ),
            // Comfirm Email
            ElevatedButton(
              onPressed: () {},
              child: Text('තහවුරු කරන්න'),
            ),
            // Enter First Name
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(labelText: 'මුල් නම'),
            ),
            // Enter Last Name
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(labelText: 'අවසාන නම'),
            ),
            // Enter Password
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'මුරපදය'),
              obscureText: true,
            ),
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
              child: Text('ලියාපදිංචි වන්න'),
            ),
          ],
        ),
      ),
    );
  }
}