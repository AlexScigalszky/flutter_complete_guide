import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import './quiz.dart';
import './question.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = [
    {
      "questionText": 'What\'s your favorite color?',
      "answers": [
        {'text': 'Black', 'score': 2},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 1},
        {'text': 'White', 'score': 5},
      ]
    },
    {
      "questionText": 'What\'s your favorite animal?',
      "answers": [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 2},
        {'text': 'Elephant', 'score': 1},
        {'text': 'Lion', 'score': 4},
      ]
    },
    {
      "questionText": 'Who\'s your favorite instructor?',
      "answers": [
        {'text': 'Max', 'score': 1},
        {'text': 'John', 'score': 2},
        {'text': 'Max 2', 'score': 3},
        {'text': 'John 2', 'score': 5},
      ]
    }
  ];

  void _anwserQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 3;
      });
      print(_questionIndex);
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  bool haveQuestion() => _questionIndex < _questions.length;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('time remaining'),
        centerTitle: true,
      ),
      body: haveQuestion()
          ? Quiz(
              questions: _questions,
              anwserQuestion: _anwserQuestion,
              questionIndex: _questionIndex)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
