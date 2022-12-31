import 'package:flutter/material.dart';

import './src/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          displayMedium: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: const OnBoardingScreen(),
    );
  }
}
