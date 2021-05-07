import 'package:flutter/material.dart';

class Sentence extends StatelessWidget {
  final String textOutput;
  final String resetText = "No more text!";
  Sentence(this.textOutput);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Text(
          textOutput,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ));
  }
}
