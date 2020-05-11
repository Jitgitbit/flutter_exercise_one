import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String questionText;                       //made immutable with 'final'  !!!   Dart has to be immutable

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(                                  //Container, double.infinity, and textAlign.center are all needed for centering here!    
      width: double.infinity,                         //Container, double.infinity, and textAlign.center are all needed for centering here!
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,                 //Container, double.infinity, and textAlign.center are all needed for centering here!
      ),
    );
  }
}