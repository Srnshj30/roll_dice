import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var currentDiceRoll = 2;

  void diceRoll() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            height: 200,
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: diceRoll,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white60),
            child: const Text(
              'Roll Dice',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
