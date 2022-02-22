import 'package:flutter/material.dart';
import 'package:formation_quiz/quiz2.dart';

class Quiz extends StatelessWidget {
  static const routeName = "/Quiz";
  Quiz({Key? key}) : super(key: key);
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Question"),
            TextButton(
                onPressed: () => answer(10, result, context),
                child: Text("Answer1")),
            TextButton(
                onPressed: () => answer(20, result, context),
                child: Text("Answer2")),
            TextButton(
                onPressed: () => answer(30, result, context),
                child: Text("Answer3")),
            TextButton(
                onPressed: () => answer(40, result, context),
                child: Text("Answer4")),
            Text("Current Score: $result"),
          ],
        ),
      ),
    );
  }
}

answer(int a, int result, BuildContext context) {
  result += a;
  Navigator.pushReplacementNamed(context, Quiz2.routeName, arguments: result);
}
