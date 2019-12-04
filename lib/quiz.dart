import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int _questionIndex;
  final List<Map<String, Object>> _questions;
  final Function _onAnswerQuestion;

  Quiz(this._questionIndex, this._questions, this._onAnswerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_questions[_questionIndex]['question']),
        ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>)
            .map((a) => Answer(a['text'], () => _onAnswerQuestion(a['score'])))
            .toList(),
      ],
    );
  }
}
