import 'package:flutter/material.dart';

import './question.dart';
import "answer.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      if (questionIndex == 1) {
        questionIndex = 0;
      } else {
        questionIndex = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        "questionText": "What is your favourite colour?",
        "answers": ["Red", "Blue", "Green"]
      },
      {
        "questionText": "What is your favourite animal?",
        "answers": ["A", "B", "C"]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first App"),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]["questionText"].toString()),
            ...(questions[questionIndex]["answers"] as List<String>)
                .map((answer) => Answer(answer, answerQuestion))
                .toList(),
          ],
        ),
      ),
    );
  }
}
