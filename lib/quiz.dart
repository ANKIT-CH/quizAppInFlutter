import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int _now;
  final Function answerQuestions;
  Quiz(this.questions, this._now, this.answerQuestions);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Questions(questions[_now]['questions']),
        ...(questions[_now]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
              answer['text'], () => answerQuestions(answer['score']));
        }).toList(),
      ],
    );
  }
}
