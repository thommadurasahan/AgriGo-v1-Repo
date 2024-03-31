import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget 
{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> 
{
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

@override
  void initState() 
  {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() 
  {
    _emailController.dispose();
    _passwordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('Register'),
      ),
      body: Column
      (
        children: 
        [
          TextField
          (
            controller: _emailController,
            decoration: const InputDecoration
            (
              labelText: 'Email',
              hintText: 'Enter your email'
            ),
          ),
          TextField
          (
            controller: _passwordController,
            decoration: const InputDecoration
            (
              labelText: 'Password',
              hintText: 'Enter your password'
            ),
          ),
          TextButton
          (
            onPressed: () async 
            {
              final email = _emailController.text;
              final password = _passwordController.text;
              final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword
              (
                email: email, password: password,
              );
              print(userCredential);
            }, 
            child: const Text('Register')
          ),
        ],
      ),
    );
  }
}
