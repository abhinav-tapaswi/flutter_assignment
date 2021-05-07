import 'package:flutter/material.dart';
import 'package:flutter_assignment/text.dart';
import 'package:flutter_assignment/textcontrol.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _q = 0;
  static const text = ["Hey! How are you?", "I am fine. Thank you."];
  void switchText() {
    setState(() {
      _q = _q + 1;
    });
  }

  void reset() {
    setState(() {
      _q = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter_Assignment"),
            backgroundColor: Colors.blue,
          ),
          body: Column(
            children: [
              Sentence(
                text[_q],
              ),
              TextControl(q: _q, switchText: switchText, reset: reset)
            ],
          )),
    );
  }
}
