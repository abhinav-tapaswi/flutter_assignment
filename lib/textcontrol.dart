import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final int q;
  final Function switchText;
  final Function reset;
  TextControl(
      {@required this.q, @required this.switchText, @required this.reset});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: q < 1
            ? RaisedButton(
                child: Text("Switch"),
                onPressed: switchText,
              )
            : RaisedButton(
                child: Text("Reset"),
                onPressed: reset,
              ));
  }
}
