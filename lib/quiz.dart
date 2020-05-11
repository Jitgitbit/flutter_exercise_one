import 'package:flutter/material.dart';

import 'package:flutter_exercise_one/answer.dart';
import 'package:flutter_exercise_one/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({this.questions, this.answerQuestion, this.questionIndex})          // the constructor here does not have to be this explicit, but, readability !!

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],                 
        ), 
        ...(questions[questionIndex]['answers'] as List<String>).map((answer){                  //yes, using the spread operator !
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}