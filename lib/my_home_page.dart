import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'quiz.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = "/";
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.network(
            "https://assets9.lottiefiles.com/packages/lf20_z35UZP.json",
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Quiz.routeName);
              },
              child: const Text("Start"))
        ],
      ),
    );
  }
}
