import 'package:flutter/material.dart';
import 'package:flutter_agrigo/get_started_eng.dart';

class LogInEng extends StatefulWidget {
  const LogInEng({super.key});

  @override
  State<LogInEng> createState() => _LogInEngState();
}

class _LogInEngState extends State<LogInEng> {
  //Field controllers for user input
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;

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
        // Column
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Using an existing account",
                style: TextStyle(
                  color: Colors.green.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
              const SizedBox(height: 50),

              // Guiding text
              const Text(
                'If you have registered before, enter the same email address and password to log in again.',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 60),

              const CircleAvatar(
                radius: 150.0,
                backgroundImage: AssetImage('assets/Userget.png'),
              ),

              const SizedBox(height: 60),

              // Enter Email
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextField(
                  controller: _emailController,
                  enableSuggestions: false,
                  autocorrect: false,
                  // Set the email keyboard to show the @ sign
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    labelStyle: TextStyle(fontSize: 20),
                    icon: Icon(Icons.email, size: 30),
                  ),
                ),
              ),

              const SizedBox(height: 36),

              // Enter Password
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(fontSize: 20),
                    icon: const Icon(Icons.password, size: 30),
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Choose the icon based on password visibility
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        // Toggle the state of password visibility
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                  obscureText: _obscureText,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
              ),

              const SizedBox(height: 80),

              // LOG IN Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(400, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color(0xFF25DA15),
                ),
                child: const Text(
                  'LOG IN',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),

              // Skip Button
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GetStartEng()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(400, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: const Color.fromARGB(255, 238, 232, 232),
                  ),
                  child: const Text(
                    "Don't want to log in?",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
