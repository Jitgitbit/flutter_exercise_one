import 'package:flutter/material.dart';

import 'package:flutter_exercise_one/quiz.dart';

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

    final _questions = const [     // Now the values are constant, var is final    // const because it is compile-time constant, not runtime constant(as for final) !!!
      {                                                                          // props or vars marked as final can't change at runtime !!!
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Grey', 'Blue', 'Green']
      },                                                                      // this is actually a MAP !!!
      {
        'questionText': 'What\'s your favorite predator animal?',
        'answers': ['Wolf', 'Tiger', 'Panther', 'Cheetah', 'Dolphin', 'Bear', 'Eagle', 'Fox', 'Maine Coon', 'Scorpion']
      },
      {
        'questionText': 'What\'s your favorite prey animal?',
        'answers': ['Donkey', 'Horse', 'Squirrel', 'Buffalo', 'Hare']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first Flutter App'),
        ),
        body: _questionIndex < _questions.length
          ? Quiz(_questions, _answerQuestion)                   // questions made a private property with "_"!
          : Center(child: Text('You did it!'),),
      ),
    );
  }
}