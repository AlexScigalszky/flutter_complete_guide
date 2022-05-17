import 'package:flutter/material.dart';

class Anwser extends StatelessWidget {
  final String _buttonText;
  final int _score;
  final Function _selectHandler;

  Anwser(this._buttonText, this._score, this._selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(_buttonText),
        onPressed: _selectHandler,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
      ),
      width: double.infinity,
    );
  }
}
