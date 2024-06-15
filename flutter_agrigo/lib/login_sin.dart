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
                switch (snapshot.connectionState) {
                  case ConnectionState.done:
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
                                labelText: 'විද්‍යුත් ලිපිනය',
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
                                labelText: 'මුරපදය',
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
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(400, 60),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                backgroundColor:
                                    const Color.fromARGB(255, 238, 232, 232),
                              ),
                              child: const Text(
                                'ලොග් වීමට අවශ්‍ය නැති ද?',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    );

                  // Indicate loading until firebase get initilized
                  default:
                    return const CircularProgressIndicator();
                }
              }),
        ),
      ),
    );
  }
}
