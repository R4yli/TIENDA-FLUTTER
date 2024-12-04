import 'package:flutter/material.dart';
import 'package:tienda_flutter/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'main',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF212325),
      ),
      home: WelcomeScreen(),
    );
  }
}
