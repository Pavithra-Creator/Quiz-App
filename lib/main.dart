import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What of the following is the default value of an instance variable?',
      'answers': [
        {'text': 'null', 'score': 1},
        {'text': '0', 'score': 2},
        {'text': 'Depends upon the type of variable', 'score': 10},
        {'text': 'Not assigned', 'score': 3},
      ],
    },
    {
      'questionText': 'What is the size of int variable?',
      'answers': [
        
        {'text': '8 bit', 'score': 1},
        {'text': '16 bit', 'score': 2},
        {'text': '32 bit', 'score': 10},
        {'text': '64 bit', 'score': 3},
      ],
    },
    {
      'questionText': 'What is the default value of byte variable?',
      
      'answers': [
        
        {'text': '0', 'score': 10},
        {'text': '0.0', 'score': 1},
        {'text': 'null', 'score': 2},
        {'text': 'not defined', 'score': 3},
      ],
    },
    {
      'questionText': 'Method Overriding is an example of?',
      'answers': [
        {'text': 'Stataic Binding', 'score': 1},
        {'text': 'Dynamic Binding', 'score': 10},
        {'text': 'Both of Binding', 'score': 2},
        {'text': 'None of the above', 'score': 3},
      ],
    },
      {
      'questionText': ' Which method must be implemented by all threads?',
      'answers': [
        {'text': 'wait()', 'score': 1},
        {'text': 'start()', 'score': 2},
        {'text': 'stop()', 'score': 3},
        {'text': 'run()', 'score': 10},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(




        
        appBar: AppBar(
          
          title: Text('Quiz Practice - Java'),
          
          backgroundColor: Colors.blue,
        ),
        
        body: Container(
          //  width: double.infinity,
      // padding: EdgeInsets.all(100.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.1,
              0.4,
              0.7,
              
              0.9
            ],
            colors: [
              Colors.white,
              Colors.white,
              Colors.blue[100],
              Colors.blue[200]
            ]
          )
        ),






          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz),
        ),
            
      ),
    );
  }
}
