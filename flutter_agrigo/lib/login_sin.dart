import 'package:flutter/material.dart';

class LoginSin extends StatelessWidget {
  const LoginSin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          // Wrap Column with SingleChildScrollView
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 24),
                const CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('assets/Userget.png'),
                ),
                const SizedBox(height: 20.0),

                // User text (replace with actual user data)
                Text(
                "User",
                style: TextStyle(
                color: Colors.green.shade800,
                fontWeight: FontWeight.bold,
                fontSize: 24,
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'නම හෝ විද්‍යුත් ලිපිනය',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'මුරපදය',
                    ),
                  ),
                ),
                Container(
                  width: 180,
                  height: 55,
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF25DA15),
                    ),
                    child: const Text(
                      'ලොග් වන්න',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
