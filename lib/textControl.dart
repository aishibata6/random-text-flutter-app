import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback nextHandler;

  TextControl(this.nextHandler); 

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        onPrimary: Colors.white,
      ),
      child: const Text('Next'),
      onPressed: nextHandler,
    );
  }
}