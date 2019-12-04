import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'question': "What's your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Greem', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'question': "What's your favorite animal?",
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 7},
        {'text': 'Elephant', 'score': 6},
        {'text': 'Lion', 'score': 3},
        {'text': 'Cat', 'score': 1},
      ],
    },
    {
      'question': "What's your favorite country?",
      'answers': [
        {'text': 'Mexico', 'score': 10},
        {'text': 'USA', 'score': 7},
        {'text': 'Canada', 'score': 6},
      ],
    },
  ];

  void _resetQuiz() => setState(() => _questionIndex = 0);
  void _answerQuestion(score) => setState(() {
    _questionIndex++;
    _totalScore += score;
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: Text('My App')),
        body: _questionIndex < _questions.length
            ? Quiz(_questionIndex, _questions, _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
