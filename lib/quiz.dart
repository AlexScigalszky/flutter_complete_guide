import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function anwserQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.anwserQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questions[questionIndex]['questionText'] as String),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map(
            (x) => Anwser(
              x['text'] as String,
              x['score'] as int,
              () => anwserQuestion(x['score'] as int),
            ),
          )
          .toList(),
    ]);
  }
}
