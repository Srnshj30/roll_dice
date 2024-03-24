import 'package:flutter/material.dart';
import 'package:roll_dice/roll_dice.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(240, 18, 18, 18),
            Color.fromARGB(255, 127, 127, 127)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const RollDice(),
    );
  }
}
