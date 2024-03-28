import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ලොග් වීම'),
          backgroundColor: const Color.fromARGB(255, 14, 214, 21),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              const CircleAvatar(
              radius: 80.0, // Adjust radius for desired size
              backgroundImage: AssetImage('assets/User.png'), // Replace with your image path
            ),
            const SizedBox(height: 20.0), // Add spacing between image and text
            
            // User text (replace with actual user data)
            const Text(
              'ආයුබෝවන්', // Replace with user name variable
              style: TextStyle(fontSize: 18.0),
            ),

              const Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'විද්‍යුත් ලිපිනය',
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
                backgroundColor: const Color.fromARGB(255, 3, 252, 11),
                    ),
                child: const Text('ලොග් වන්න'),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}