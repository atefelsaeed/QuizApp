import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final Function q;
  final resultScore;

  Result(this.q, this.resultScore);

  String get resultPhase {
    String resultText;
    if (resultScore >= 70) {
      resultText = 'You are awesome !';
    } else if (resultScore >= 40) {
      resultText = 'Pretty likable !';
    } else {
      resultText = 'You are so bad !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Your Score is $resultScore',
          style:
              TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold, color: b),
          textAlign: TextAlign.center,
        ),
        Text(
          resultPhase,
          style:
              TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold, color: b),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart The App',
              style: TextStyle(color: Colors.blue, fontSize: 30)),
          onPressed: q,
        )
      ],
    ));
  }
}
