import 'package:flutter/material.dart';
import 'login_sin.dart';
import 'signup_sin.dart';
import 'get_started_sin.dart';
import 'get_started_eng.dart';
import 'language_selection.dart';
import 'menu.dart';
import 'categories.dart';
import 'page_screen.dart';
import 'catogayveg.dart';
import 'loading.dart';
import 'home_sin.dart';
import 'notification.dart';
import 'veg_screen.dart';
import 'fish_screen.dart';
import 'fruit_screen.dart';
import 'imports_screen.dart';
import 'others_screen.dart';
import 'signup_eng.dart';
import 'login_eng.dart';
import 'notification.dart';
import 'home_eng.dart';
import 'profile.dart';
import 'library.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeSin(),
    );
  }
}
