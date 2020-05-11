import 'package:flutter/material.dart';

import 'package:flutter_exercise_one/answer.dart';
import 'package:flutter_exercise_one/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Grey', 'Blue', 'Green']
      },                                                                      // this is actually a MAP !!!
      {
        'questionText': 'What\'s your favorite predator animal?',
        'answers': ['Wolf', 'Tiger', 'Panther', 'Cheetah', 'Dolphin']
      },
      {
        'questionText': 'What\'s your favorite prey animal?',
        'answers': ['Donkey', 'Horse', 'Squirrel', 'Buffalo', 'Rabbit']
      }
    ];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('My first App'),
      ),
      body: Column(children: [
        Question(questions[_questionIndex]),
        // RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestion,),
        // RaisedButton(child: Text('Answer 2'), onPressed: ()=>print('Answer 2 chosen'),),
        // RaisedButton(child: Text('Answer 3'), onPressed: (){print('Answer 3 chosen');},),
        Answer(_answerQuestion),
        Answer(_answerQuestion),
        Answer(_answerQuestion),
      ],),
    ),);
    
  }
}