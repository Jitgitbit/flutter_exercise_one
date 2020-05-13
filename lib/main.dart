import 'package:flutter/material.dart';

import 'package:flutter_exercise_one/quiz.dart';
import 'package:flutter_exercise_one/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final _questions = const [     // Now the values are constant, var is final    // const because it is compile-time constant, not runtime constant(as for final) !!!
    {                                                                          // props or vars marked as final can't change at runtime !!!
      'questionText': 'What\'s your favorite color?',                               // questions made a private property with "_"!
      'answers': [{'text':'Black','score':1},{'text':'Red','score':2},{'text':'Grey','score':3},{'text':'Blue','score':4},{'text':'Green','score':5}],
    },                                                                      // this is actually a MAP !!!
    {
      'questionText': 'What\'s your favorite predator animal?',
      'answers': [
        {'text':'Wolf','score':1},{'text':'Tiger','score':2},{'text':'Panther','score':3},
        {'text':'Dolphin','score':4},{'text':'Eagle','score':5},{'text':'Scorpion','score':6}
      ],
    },
    {
      'questionText': 'What\'s your favorite prey animal?',
      'answers': [{'text':'Donkey','score':1},{'text':'Horse','score':2},{'text':'Buffalo','score':3},{'text':'Hare','score':4}],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score){

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }
  void _resetQuiz(){
     
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Phoenix Quiz App'),
        ),
        body: _questionIndex < _questions.length
          ? Quiz(questions: _questions, answerQuestion: _answerQuestion, questionIndex: _questionIndex,)                   
          : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}