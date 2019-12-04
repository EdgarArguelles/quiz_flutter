import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final Function _resetQuiz;

  Result(this._score, this._resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            'You did it! your score is $_score',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: _resetQuiz,
          )
        ],
      ),
    );
  }
}
