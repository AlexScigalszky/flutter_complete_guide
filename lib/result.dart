import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final VoidCallback _resetHandler;

  Result(this._score, this._resetHandler);

  String get resultPhrase {
    if (_score <= 8) {
      return 'You are awesome and innocent!';
    } else if (_score <= 12) {
      return 'Pretty likeable!';
    } else if (_score <= 16) {
      return 'You are ... strange?!';
    } else {
      return 'You are so bad!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: _resetHandler,
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
