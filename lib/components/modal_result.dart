import 'package:calculator_imc/constants.dart';
import 'package:flutter/material.dart';

class ModalResult extends StatelessWidget {
  final double imc;
  final String resultado;
  const ModalResult({super.key, required this.imc, required this.resultado});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        color: backgroundColor,
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Seu IMC é de', style: labelTextStyle,),
            Text(imc.toStringAsFixed(2), style: numberTextStyle,),
            Text(resultado, style: labelTextStyle,),
          ],
          ),
        ),
    );
  }
}
