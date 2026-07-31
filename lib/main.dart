import 'package:flutter/material.dart';
import 'screens/home_screen.dart';


void main() {
  runApp(const BookBrunoApp());
}

class BookBrunoApp extends StatelessWidget {
  const BookBrunoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bruno Tech Support',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Arial',
      ),
      home: const HomeScreen(),
    );
  }
}
  