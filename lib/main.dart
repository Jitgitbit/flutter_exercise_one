import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    void answerQuestion(){
      print('Answer chosen!');
    }

    var questions = ['What\'s your favorite color?', 'Do you like trains?'];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('My first App'),
      ),
      body: Column(children: [
        Text('The question!'),
        RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion,),
        RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion,),
        RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion,),
      ],),
    ),);
    
  }
}