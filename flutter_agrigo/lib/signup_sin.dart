import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_agrigo/firebase_options.dart';
import 'package:flutter_agrigo/get_started_sin.dart';

class SignUpSin extends StatefulWidget {
  const SignUpSin({super.key});

  @override
  State<SignUpSin> createState() => _SignUpSinState();
}

class _SignUpSinState extends State<SignUpSin> {
  // Field controllers for user input
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;

  // Define ValueNotifiers for the form fields
  final ValueNotifier<bool> isNameFilled = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isNumberFilled = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isEmailFilled = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isPasswordFilled = ValueNotifier<bool>(false);
  bool _agreedToTerms = false;

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // Dispose field Controllers
    _nameController.dispose();
    _numberController.dispose();
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
                      children: [
                        Text(
                          "නව ගිණුමක් සෑදීම",
                          style: TextStyle(
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                          ),
                        ),

                        const SizedBox(height: 60),

                        // Guide text
                        const Text(
                          'අප වෙත අලුත් නම් ඔබගේ නම, දුරකථන අංකය, විද්‍යුත් ලිපිනය සහ නව මුරපදයක් ඇතුලත් කර ලියාපදිංචි වන්න.',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),

                        const SizedBox(height: 60),

                        // Name entering field
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: TextField(
                            controller: _nameController,

                            // Set the name controller
                            decoration: const InputDecoration(
                              labelText: 'නම',
                              labelStyle: TextStyle(fontSize: 20),
                              icon: Icon(Icons.person, size: 30),
                            ),

                            // Notify the ValueNotifier when the text changes
                            onChanged: (value) {
                              isNameFilled.value = value.isNotEmpty;
                            },
                          ),
                        ),

                        const SizedBox(height: 36),

                        // Phone Number entering field
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: TextFormField(
                            controller: _numberController,

                            // Set the phonenumber controller
                            decoration: const InputDecoration(
                              labelText: 'දුරකථන අංකය',
                              labelStyle: TextStyle(fontSize: 20),
                              hintText: '(+94) 0xxxxxxxxx',
                              icon: Icon(Icons.phone, size: 30),
                            ),

                            // Set the phone number keyboard to show the number pad
                            //keyboardType: TextInputType.phone

                            // Only allow numbers
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(10)
                            ],

                            // Notify the ValueNotifier when the text changes
                            onChanged: (value) {
                              isNumberFilled.value = value.isNotEmpty;
                            },

                            // Validate the phone number
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.length < 10) {
                                return 'කරුණාකර වලංගු දුරකථන අංකයක් ඇතුලත් කරන්න';
                              }
                              return null;
                            },
                          ),
                        ),

                        const SizedBox(height: 24),

                        // Email address entering field
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: TextFormField(
                            controller: _emailController,

                            // Set the email controller
                            decoration: const InputDecoration(
                              labelText: 'විද්‍යුත් ලිපිනය',
                              labelStyle: TextStyle(fontSize: 20),
                              hintText: '@gmail.com',
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

                        /*// Email Confirmation
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const GetStartSin()));
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(400, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor: const Color(0xFF25DA15),
                            ),
                            child: const Text(
                              'විද්‍යුත් ලිපිනය තහවුරු කරන්න',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),

                        const SizedBox(height: 24),*/

                        // Informing password requirements
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text(
                            'Password must have at least one uppercase letter, one lowercase letter, one number and one symbol',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Password entering field
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: TextFormField(
                            controller: _passwordController,

                            // Set the password controller
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

                            // Validate the password
                            validator: (value) {
                              // Password must have at least one uppercase letter, one lowercase letter, one number and one symbol
                              String pattern =
                                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

                              RegExp regex = RegExp(pattern);

                              if (value == null ||
                                  value.isEmpty ||
                                  value.length < 8 ||
                                  !regex.hasMatch(value)) {
                                return 'කරුණාකර නිවැරැදි මුරපදයක් ඇතුලත් කරන්න';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),

                        const SizedBox(height: 24),

                        // Checkbox for Terms and Conditions
                        CheckboxListTile(
                          value: _agreedToTerms,
                          title: const Text(
                            'ඔබගේ සේවා කොන්දේසිවලට එකඟ වන අතර මාගේ දත්ත භාවිතා කිරීමට කැමැත්ත ලබා දෙමි.',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                            ),
                          ),

                          // Set state according to the bool value
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
                                  // Validate the form
                                  if (_formKey.currentState!.validate()) {
                                    final email = _emailController.text;
                                    final password = _passwordController.text;

                                    // Create a new user
                                    await FirebaseAuth.instance
                                        .createUserWithEmailAndPassword(
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
                            'ලියාපදිංචි වන්න',
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
                              'ලියාපදිංචි වීමට අවශ්‍ය නැති ද?',
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
