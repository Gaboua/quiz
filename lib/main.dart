import 'package:flutter/material.dart';
import 'package:formation_quiz/quiz.dart';
import 'package:formation_quiz/result.dart';

import 'my_home_page.dart';
import 'quiz2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyHomePage.routeName,
      routes: {
        MyHomePage.routeName: (context) => const MyHomePage(),
        Quiz.routeName: (context) => Quiz(),
        Result.routeName: (context) => const Result(),
        Quiz2.routeName: (context) => const Quiz2(),
      },
    );
  }
}
