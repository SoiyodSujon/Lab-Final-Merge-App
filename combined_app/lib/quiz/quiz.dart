// lib/quiz/quiz.dart
import 'package:combined_app/main.dart';

import 'package:combined_app/quiz/main.dart';

import 'package:flutter/material.dart';
//import 'quiz_home.dart'; // assuming you have a QuizHome widget

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    );
  }
}
