import 'package:flutter/material.dart';

class RandomText extends StatelessWidget {
  const RandomText({required this.textIndex, required this.text});

  final List text;
  final int textIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
        Text(
          text[textIndex].toString(),
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300, color: Colors.blueGrey[800]),
          textAlign: TextAlign.center,
          ),
    );
  }
}