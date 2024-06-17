import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_agrigo/firebase_options.dart';
import 'package:flutter_agrigo/get_started_sin.dart';

class LogInSin extends StatefulWidget {
  const LogInSin({super.key});

  @override
  State<LogInSin> createState() => _LogInSinState();
}

class _LogInSinState extends State<LogInSin> {
  //Field controllers for user input
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;

  // Define ValueNotifiers for the form fields
  final ValueNotifier<bool> isEmailFilled = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isPasswordFilled = ValueNotifier<bool>(false);

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // Dispose field Controllers
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
          child: FutureBuilder(
            // Initialize Firebase
            future: Firebase.initializeApp(
              options: DefaultFirebaseOptions.currentPlatform,
            ),

            // Build the form based on the state of Firebase
            builder: (context, snapshot) {
              // Handle firebase initialization errors
              switch (snapshot.connectionState) {
                // If firebase is initialized
                case ConnectionState.done:

                  // Form
                  return Form(
                    key: _formKey,

                    // Column
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "පවතින ගිණුම භාවිත කිරීම",
                          style: TextStyle(
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                          ),
                        ),

                        const SizedBox(height: 50),

                        // Guide text
                        const Text(
                          'ඔබ පෙර ලියාපදිංචි වී ඇත්නම් එම විද්‍යුත් ලිපිනය සහ මුරපදය ඇතුලත් කර නැවත පිවිසෙන්න.',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),

                        const SizedBox(height: 60),

                        // Avatar
                        const CircleAvatar(
                          radius: 150.0,
                          backgroundImage: AssetImage('assets/Userget.png'),
                        ),

                        const SizedBox(height: 60),

                        // Email address entering field
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: TextFormField(
                            // Set the email controller
                            controller: _emailController,

                            // Set the email field decoration
                            decoration: const InputDecoration(
                              labelText: 'විද්‍යුත් ලිපිනය',
                              labelStyle: TextStyle(fontSize: 20),
                              icon: Icon(Icons.email, size: 30),
                            ),

                            // Set the email keyboard to show the @ sign
                            keyboardType: TextInputType.emailAddress,

                            enableSuggestions: false,
                            autocorrect: false,

                            // Notify the ValueNotifier when the text changes
                            onChanged: (value) {
                              isEmailFilled.value = value.isNotEmpty;
                            },

                            // Validate the email address
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.contains('@gmail.com')) {
                                return 'කරුණාකර වලංගු gmail ලිපිනයක් ඇතුලත් කරන්න';
                              }
                              return null;
                            },
                          ),
                        ),

                        const SizedBox(height: 36),

                        // Password entering field
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: TextField(
                            // Set the password controller
                            controller: _passwordController,

                            // Set the email field decoration
                            decoration: InputDecoration(
                              labelText: 'මුරපදය',
                              labelStyle: const TextStyle(fontSize: 20),
                              icon: const Icon(Icons.password, size: 30),

                              // Set the password visibility
                              suffixIcon: IconButton(
                                // Choose the icon based on password visibility
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),

                                // Toggle the state of password visibility
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                              ),
                            ),

                            // Hide the password
                            obscureText: _obscureText,

                            enableSuggestions: false,
                            autocorrect: false,

                            // Notify the ValueNotifier when the text changes
                            onChanged: (value) {
                              isPasswordFilled.value = value.isNotEmpty;
                            },
                          ),
                        ),

                        const SizedBox(height: 80),

                        // LOG IN Button
                        ElevatedButton(
                          onPressed: isEmailFilled.value &&
                                  isPasswordFilled.value
                              ? () async {
                                  // Validate the form
                                  if (_formKey.currentState!.validate()) {
                                    final email = _emailController.text;
                                    final password = _passwordController.text;

                                    // Create a new user
                                    await FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                            email: email, password: password);
                                  }
                                  // Disable the button if the fields are empty
                                }
                              : null,

                          // Button styles
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(400, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            backgroundColor: const Color(0xFF25DA15),
                          ),

                          // Button text
                          child: const Text(
                            'ලොග් වන්න',
                            style: TextStyle(
                                fontSize: 24,
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
                                      builder: (context) =>
                                          const GetStartSin()));
                            },

                            // Button styles
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(400, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 238, 232, 232),
                            ),

                            // Button text
                            child: const Text(
                              'ලොග් වීමට අවශ්‍ය නැති ද?',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  );

                // Indicate loading until firebase get initialized
                default:
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: Colors.green,
                      ),
                    ),
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}
