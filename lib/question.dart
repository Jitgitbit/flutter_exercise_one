import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String questionText;                       //made immutable with 'final'  !!!   Dart has to be immutable

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}