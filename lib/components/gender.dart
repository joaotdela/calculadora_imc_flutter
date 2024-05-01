import 'package:calculator_imc/constants.dart';
import 'package:flutter/material.dart';

class gender extends StatelessWidget {
  final String label;
  final IconData icon;
  const gender({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
            Icon(
                icon, 
                size: 80,
            ),
            SizedBox(height: 15),
            Text(
                label,
                style: labelTextStyle,
            )
        ],
    );
  }
}
