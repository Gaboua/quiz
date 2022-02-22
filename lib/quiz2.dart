import 'package:flutter/material.dart';
import 'package:formation_quiz/result.dart';

class Quiz2 extends StatelessWidget {
  static const routeName = "/Quiz2";
  const Quiz2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as int;
    int result = args;
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz2"),
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
  Navigator.pushReplacementNamed(context, Result.routeName, arguments: result);
}
