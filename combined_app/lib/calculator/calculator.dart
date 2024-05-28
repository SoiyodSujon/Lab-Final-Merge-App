// lib/calculator/calculator.dart
import 'package:combined_app/calculator/main.dart';
import 'package:flutter/material.dart';
//import 'calculator_home.dart'; // assuming you have a CalculatorHome widget

class CalculatorApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorApp(),
    );
  }
}
