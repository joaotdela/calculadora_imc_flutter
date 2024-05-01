import 'package:calculator_imc/calculadora.dart';
import 'package:calculator_imc/components/bottom_button.dart';
import 'package:calculator_imc/components/contador.dart';
import 'package:calculator_imc/components/custom_card.dart';
import 'package:calculator_imc/components/gender.dart';
import 'package:calculator_imc/components/modal_result.dart';
import 'package:calculator_imc/components/slider_altura.dart';
import 'package:calculator_imc/constants.dart';
import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage ({super.key});

  @override
  State<CalculadoraPage > createState() => _CalculadoraPageState();
}
// 0 - male, 1 - female
int selected = 0;
class _CalculadoraPageState extends State<CalculadoraPage > {
    int peso = 80;
    int idade = 18;
    int altura = 120;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Calculadora Imc"), 
            centerTitle: true,
            ),
        body:Column(
        children: [
        Expanded(child: 
            Row(
                children: [
                    Expanded(
                    child: GestureDetector(onTap: ()
                    {
                        setState(() {
                            selected=1;
                        });
                    },
                    child: CustomCard(active: selected==0, child: gender(icon: Icons.male, label: "Male")),)),

                    Expanded(
                    child: GestureDetector(onTap: ()
                    {
                        setState(() {
                            selected=0;
                        });
                    },
                    child: CustomCard(active: selected==1, child: gender(icon: Icons.female, label: "Female")),)),

                ],
            ),
        ),
        Expanded(
        child: CustomCard(
                 active: true,
                 child: SliderAltura(
                 altura: altura,
                 onChanged: (double value){
                     setState(() {
                     altura = value.toInt();
                                          });
                 },
                 )
                 )
        ), 
        Expanded(
        child: Row(
                children: [
                    Expanded(child: CustomCard(
                    active: true,
                    child: Contador(
                        label: "Peso", 
                        number: peso, 
                        onDecrement: (){
                                setState(() {
                                    peso--;
                                   });
                            }, 
                        onIncrement: (){
                                 setState(() {
                                    peso++;
                                   });
                            })
                    ,)
                    ),
                    Expanded(child: CustomCard(
                    active: true,
                    child: Contador(
                        label: "Idade", 
                        number: idade, 
                        onDecrement: (){
                                setState(() {
                                    idade--;
                                   });
                            }, 
                        onIncrement: (){
                                 setState(() {
                                    idade++;
                                   });
                            })
                    ,)
                    ),
                ]
            ,)
        ),
        BottomButton(
            title: "Calcular IMC", 
            onPressed: (){
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context){
                            final imc =  Calculadora.calcularImc(peso: peso, altura: altura);
                            final resultado = Calculadora.obterResultado(imc);
                            return ModalResult(imc: imc, resultado: resultado,);
                        },
                    );
                }
            )
        ],
        ),
    );
  }
}

