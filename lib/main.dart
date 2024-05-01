import 'package:calculator_imc/constants.dart';
import 'package:calculator_imc/pages/calculadora_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Caculadora Imc',
            theme: ThemeData.dark().copyWith(
            primaryColor: backgroundColor,
            appBarTheme: const AppBarTheme().copyWith(
                backgroundColor: backgroundColor,
            ),
        ),
        home: const CalculadoraPage(),
    );
  }
}
