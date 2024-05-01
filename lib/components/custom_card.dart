import 'package:calculator_imc/constants.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
    final Widget? child; 
    final bool active;
  const CustomCard({super.key, this.child, required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
        color: active ? activeCardColour : inactiveCardColour,
        borderRadius: BorderRadius.circular(10),
        ),
        child: child,
    );
  }
}
