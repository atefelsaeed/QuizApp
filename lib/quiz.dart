import 'dart:math';

import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;

  final int questionInex;
  final answerQuestion;

  Quiz(this.question, this.questionInex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(question[questionInex]['questionText']),
      ...(question[questionInex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(() => answerQuestion(answer['score']), answer['text']);
      }).toList(),
    ]);
  }
}
