import 'dart:math';

import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
Color w=Colors.white;
Color b=Colors.black;
class _MyAppState extends State<MyApp> {

  bool isSwitch=false;

  int _questionInex = 0;
  int _totalScore = 0;
  int num0 = 0;
  int num1 = 0;
  int num2 = 0;
  int num3 = 0;
  int num4 = 0;

  void _resetQuiz() {
    setState(() {
      _questionInex = 0;
      _totalScore = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
      num3 = 0;
      num4 = 0;
    });
  }

  void answerQuestion(score) {
    if (_questionInex == 0)
      num0 = score;
    else if (_questionInex == 1)
      num1 = score;
    else if (_questionInex == 2) num2 = score;
    else if (_questionInex == 3) num3 = score;
    else if (_questionInex == 4) num4 = score;

    _totalScore += score;
    setState(() {
      _questionInex += 1;
    });
    print('_questionInex = $_questionInex');
    print('num0 = $num0');
    print('num1 = $num1');
    print('num2 = $num2');
    print('num2 = $num3');
    print('num2 = $num4');
    print('_totalScore = $_totalScore');
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 30},
        {'text': 'Yellow', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Tiger', 'score': 20},
        {'text': 'Elephant', 'score': 30},
        {'text': 'Lion', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'Ali', 'score': 10},
        {'text': 'Ahmed', 'score': 20},
        {'text': 'Hassan', 'score': 30},
        {'text': 'Atef', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'Chicken', 'score': 20},
        {'text': 'Meat', 'score': 30},
        {'text': 'Rise', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s your favorite Drink?',
      'answers': [
        {'text': 'Lemon', 'score': 10},
        {'text': 'Mango', 'score': 20},
        {'text': 'Chocolate', 'score': 30},
        {'text': 'Coca', 'score': 40}
      ]
    },
  ];
  Random random;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('MCQ App',style: TextStyle(color: w),),
          actions: <Widget>[
            // Switch(
            //   value: isSwitch,
            //   onChanged: (value){
            //     setState(() {
            //       isSwitch=value;
            //       print(isSwitch);
            //       if(isSwitch==true){b=Colors.white; w=Colors.black;}
            //       if(isSwitch==false){b=Colors.black; w=Colors.white;}
            //     });
            //   },
            //   activeColor: Colors.white,
            //   inactiveThumbColor: Colors.black,
            //   inactiveTrackColor: Colors.black,
            // ),
          ],
        ),

        body: Container(
          color: w,
            child: _questionInex < _question.length
                ? Quiz(_question, _questionInex, answerQuestion)
                : Result(_resetQuiz, _totalScore)),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back_ios,color: w,size: 30,),
          onPressed: () {
            if (_questionInex == 1) _totalScore -= num0;
            if (_questionInex == 2) _totalScore -= num1;
            if (_questionInex == 3) _totalScore -= num2;
            if (_questionInex == 4) _totalScore -= num3;
            if (_questionInex == 5) _totalScore -= num4;

            setState(() {
              if (_questionInex > 0) {
                _questionInex--;
              }
            });

            print('_questionInex = $_questionInex');
            print('num0 = $num0');
            print('num1 = $num1');
            print('num2 = $num2');
            print('num2 = $num3');
            print('num2 = $num4');
            print('_totalScore = $_totalScore');
          },
        ),
      ),
    );
  }
}
