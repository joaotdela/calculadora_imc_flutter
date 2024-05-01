import 'dart:html';

import 'package:calculator_imc/constants.dart';
import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
    final String label;
    final int number;
    final void Function() onIncrement;
    final void Function() onDecrement;
  const Contador({super.key, required this.label,  required this.number, required this.onDecrement, required this.onIncrement});

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
        Text(label, style: labelTextStyle,),
        Text('$number', style: numberTextStyle),
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            ElevatedButton(
            onPressed: onIncrement,
            style: ElevatedButton.styleFrom(
                backgroundColor: activeCardColour,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
            ),
            child: Icon( Icons.add),
            ),
            SizedBox(width: 20,),
            ElevatedButton(
            onPressed: onDecrement,
            style: ElevatedButton.styleFrom(
                backgroundColor: activeCardColour,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
            ),
            child: Icon( Icons.remove),
            )
        ],
        )
    ],
    ),
    );
  }
}
