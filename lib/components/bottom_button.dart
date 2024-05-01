import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
    final String title;
    final void Function() onPressed;
  const BottomButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: onPressed,
        child: Container(
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 70,
        color: const Color(0xFFEB1555),
        child: Center(
                child: Text(title, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                ),
        ),
    );
  }
}
