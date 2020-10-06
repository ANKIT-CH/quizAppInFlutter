import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answer;
  final Function locFind;
  Answers(this.answer, this.locFind);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      child: Text(answer),
      onPressed: locFind,
    );
  }
}
