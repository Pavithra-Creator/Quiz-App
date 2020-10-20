import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
     
    if (resultScore >= 15) {
     
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 10) {
      resultText = 'You Need Litle Practice to Acive Gold';
    } else if (resultScore <= 6) {
      resultText = 'Work Hard to Acive Gold';
    } else {
      resultText = 'I Think You are New in this Filed';
    }
    
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
        height:250.0,
      ),
          Text(
            
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            
          ),
          FlatButton(
            
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
