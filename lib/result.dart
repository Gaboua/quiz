import 'package:flutter/material.dart';
import 'package:formation_quiz/my_home_page.dart';

class Result extends StatelessWidget {
  static const routeName = "/Result";
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Score: $args"),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, MyHomePage.routeName);
                },
                child: Text("Reset.")),
          ],
        ),
      ),
    );
  }
}
