import 'package:flutter/material.dart';
import 'package:coin_toss/cock_or_pussy.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradientColors, {super.key});

  final List<Color> gradientColors;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const ChangeImage(),
        );
  }
}
