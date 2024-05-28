// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// import 'package:combined_app/quiz/wrapper.dart';
import 'package:combined_app/quiz/screens/quiz_screen.dart';
import 'package:combined_app/quiz/widgets/add_question_screen.dart';
import 'package:combined_app/quiz//widgets/next_button.dart'; // Import the RectangularButton widget

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark().copyWith(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RectangularButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
              label: 'Start Quiz',
            ),
            SizedBox(height: 24),
            RectangularButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AddQuestionScreen(),
                  ),
                );
              },
              label: 'Add Question',
            )
          ],
        ),
      ),
    );
  }
}
