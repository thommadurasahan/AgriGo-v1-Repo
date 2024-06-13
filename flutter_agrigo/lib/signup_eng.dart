import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_agrigo/firebase_options.dart';
import 'package:flutter_agrigo/get_started_eng.dart';

class SignUpEng extends StatefulWidget {
  const SignUpEng({super.key});

  @override
  State<SignUpEng> createState() => _SignUpEngState();
}

class _SignUpEngState extends State<SignUpEng> {
  // Field controllers for user input
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _agreedToTerms = false;

  bool _obscureText = true;

  // Define ValueNotifiers for the form fields
  final ValueNotifier<bool> isNameFilled = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isNumberFilled = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isEmailFilled = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isPasswordFilled = ValueNotifier<bool>(false);

  @override
  void dispose() {
    _nameController.dispose();
    _numberController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
          child: FutureBuilder(
            future: Firebase.initializeApp(
              options: DefaultFirebaseOptions.currentPlatform,
            ),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.done:
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Creating a New Profile",
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.bold,
                          fontSize: 34,
                        ),
                      ),

                      const SizedBox(height: 60),

                      // Guiding text
                      const Text(
                        'If you are new to us, register by providing your name, phone number, email address and a new password.',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),

                      const SizedBox(height: 60),

                      // Enter Name
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextField(
                          // Notify the ValueNotifier when the text changes
                          onChanged: (value) {
                            isNameFilled.value = value.isNotEmpty;
                          },
                          controller: _nameController,
                          decoration: const InputDecoration(
                            labelText: 'Name',
                            labelStyle: TextStyle(fontSize: 20),
                            icon: Icon(Icons.person, size: 30),
                          ),
                        ),
                      ),

                      const SizedBox(height: 36),

                      // Enter Phone Number
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextField(
                          // Notify the ValueNotifier when the text changes
                          onChanged: (value) {
                            isNumberFilled.value = value.isNotEmpty;
                          },
                          controller: _numberController,
                          // Set the phone number keyboard to show the number pad
                          //keyboardType: TextInputType.phone,
                          // Only allow numbers
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(10)
                          ],
                          decoration: const InputDecoration(
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(fontSize: 20),
                            icon: Icon(Icons.phone, size: 30),
                          ),
                        ),
                      ),

                      const SizedBox(height: 60),

                      // Enter Email
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextField(
                          // Notify the ValueNotifier when the text changes
                          onChanged: (value) {
                            isEmailFilled.value = value.isNotEmpty;
                          },
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

                      /*// Email Confirmation
                   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetStartSin()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(400, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      backgroundColor: const Color(0xFF25DA15),
                    ),
                    child: const Text(
                      'Confirm Email Address',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
            
                    const SizedBox(height: 24),*/

                      // Enter Password
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextField(
                          // Notify the ValueNotifier when the text changes
                          onChanged: (value) {
                            isPasswordFilled.value = value.isNotEmpty;
                          },
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: const TextStyle(fontSize: 20),
                            icon: const Icon(Icons.password, size: 30),
                            suffixIcon: IconButton(
                              icon: Icon(
                                // Choose the icon based on password visibility
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
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

                      const SizedBox(height: 60),

                      // Checkbox for Terms and Conditions
                      CheckboxListTile(
                        title: const Text(
                          'I agree to your terms of Service and I permit to use of my data.',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        value: _agreedToTerms,
                        onChanged: (value) =>
                            setState(() => _agreedToTerms = value!),
                        activeColor: const Color(0xFF25DA15),
                      ),

                      const SizedBox(height: 60),

                      // Sign Up Button
                      ElevatedButton(
                        onPressed: isNameFilled.value &&
                                isNumberFilled.value &&
                                isEmailFilled.value &&
                                isPasswordFilled.value &&
                                _agreedToTerms
                            ? () async {
                                final email = _emailController.text;
                                final password = _passwordController.text;

                                await FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                        email: email, password: password);
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(400, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: const Color(0xFF25DA15),
                        ),
                        child: const Text(
                          'REGISTER',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),

                      const SizedBox(height: 16),

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
                            backgroundColor:
                                const Color.fromARGB(255, 238, 232, 232),
                          ),
                          child: const Text(
                            "Don't want to Regiter?",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          )),
                    ],
                  );
                default:
                  return const CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}
