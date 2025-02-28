import 'package:flutter/material.dart';

import 'package:flutter_exercise_one/answer.dart';
import 'package:flutter_exercise_one/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions, 
    @required this.answerQuestion, 
    @required this.questionIndex,
  });         

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],                 
        ), 
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer){                  //yes, using the spread operator !
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}