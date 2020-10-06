import 'package:first_hello/answer.dart';
import 'package:first_hello/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _now = 0;
  int _totalScore = 0;
  var questions = [
    {
      'questions': 'what\'s your favourite colour?',
      'answers': [
        {'text': 'blue', 'score': 5},
        {'text': 'black', 'score': 1},
        {'text': 'green', 'score': 10},
        {'text': 'white', 'score': 20}
      ],
    },
    {
      'questions': 'what\'s your favourite animal',
      'answers': [
        {'text': 'snake', 'score': 1},
        {'text': 'lion', 'score': 5},
        {'text': 'cat', 'score': 10},
        {'text': 'dog', 'score': 20}
      ],
    },
    {
      'questions': 'what\'s your favourite food item',
      'answers': [
        {'text': 'kachori', 'score': 5},
        {'text': 'samosa', 'score': 1},
        {'text': 'dahibda', 'score': 10},
        {'text': 'rasmalai', 'score': 20}
      ],
    }
  ];

  void _reset() {
    setState(() {
      _now = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _now += 1;
    });

    print(_now);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
      ),
      body: _now < 3
          ? Quiz(questions, _now, _answerQuestions)
          : Result(_totalScore, _reset),
    ));
  }
}
