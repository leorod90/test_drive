import 'package:flutter/material.dart';
import 'package:test_drive/colors.dart';
import 'package:test_drive/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(useMaterial3: true),
      theme: theme,
      home: const HomeScreen(),
    );
  }
}
