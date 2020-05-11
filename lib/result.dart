import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase{
    String resultText;
    if(resultScore <= 5){
      resultText = 'You are awesome!';
    }else if(resultScore <= 7){
      resultText = 'Pretty likeable';
    }else if(resultScore <= 10){
      resultText = 'Not so great!';
    }else{
      resultText = 'That is awful!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: resetHandler,
            textColor: Colors.blue, 
            child: Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}