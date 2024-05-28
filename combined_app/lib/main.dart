// import 'package:combined_app/weather/src/features/weather/presentation/weather_page.dart';
// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'HomeDisplay.dart';
import 'portfolio/main.dart';
import 'quiz/quiz.dart';
//CombinedApp,HomeDisplay
// import 'weather/weathers.dart';
import 'calculator/calculator.dart';
// import 'portfolio/portfolio.dart';
// import 'weather/main.dart';
// import 'weather/src/features/weather/presentation/weather_page.dart';
import 'weathersujon/src/features/weather/presentation/weather_page.dart';

// ignore: duplicate_import
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import 'wrapper.dart';
//import 'home.dart'; // Replace with your actual home screen widget

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCS-ENEdxMhJ4W6PYZf-AaI0zIQRQ50hso",
          projectId: "pervasive-app",
          messagingSenderId: "844484873174",
          appId: "1:844484873174:web:90b84ca5333896febab277"));
  runApp(ProviderScope(child: CombinedApp()));
}

class CombinedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Combined App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Wrapper(), // Replace with your actual home screen widget
    );
  }
}
