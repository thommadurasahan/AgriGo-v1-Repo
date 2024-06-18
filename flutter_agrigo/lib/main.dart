import 'package:flutter/material.dart';
import 'package:flutter_agrigo/loading.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Set the title of the app
      home: Loading(),
    );
  }
}
