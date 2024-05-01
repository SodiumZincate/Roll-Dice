import 'package:flutter/material.dart';
import 'package:coin_toss/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Colors.cyanAccent,
          Colors.white24,
          Colors.cyanAccent,
        ]),
      ),
    );
  }
}
