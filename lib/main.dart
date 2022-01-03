import 'package:flutter/material.dart';
import './randomText.dart';
import './textControl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override 
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  final _texts = const [
    'This is the very first text!', 'Keep going and tap on Next', 'You are doing great', 'Yesssssss', 'You are almost to the end', 'Well done!'
  ];

  var _textIndex = 0;

  void _goToNextText() {
      setState(() {
        _textIndex += 1;
      });
      if (_textIndex < _texts.length) {
        print('There are more texts');
      } else {
        print('End of the texts');
      }
  }


  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Just A Button Type Of App'),
      ),
      body: _textIndex < _texts.length ? Column(
        children: [
          RandomText(text: _texts, textIndex: _textIndex),
          TextControl(_goToNextText),
        ]
      ) : 
        Center(
          child: Text('The End',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.amber),
          ),
        ),       
      )
    );
  }
}
