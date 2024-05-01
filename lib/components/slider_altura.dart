import 'package:calculator_imc/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SliderAltura extends StatelessWidget {
    final int altura;
    final void Function(double) onChanged;
      const SliderAltura({super.key,required this.altura, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
        Text("Altura", style: labelTextStyle,),
        Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Text('$altura', style: numberTextStyle,),
            Text('cm', style: labelTextStyle,),
        ],
        ),
        Slider(
        min: 120,
        max: 220,
        value: altura.toDouble(),
        onChanged: onChanged,
        )
    ],
    );
  }
}
