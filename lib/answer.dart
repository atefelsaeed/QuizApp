import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function x;

  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: MaterialButton(
          padding: EdgeInsets.all(10),
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(
            answerText,
            style: TextStyle(fontSize: 25),
          ),
          onPressed: x,
        ));
  }
}
