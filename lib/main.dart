import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_screen.dart';
// ignore: unused_import
import 'package:quiz_app/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'quiz app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3:true,
      ),
      home: const HomeScreen(),
    );
  }
}
