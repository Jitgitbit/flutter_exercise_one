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

    var questions = ['What\'s your favorite color?', 'Do you like trains?'];

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