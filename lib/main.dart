import 'package:flutter/material.dart';
import 'package:travel_ui_app/src/utils/constants/colors.dart';

import './src/screens/place_detail_screen.dart';
import './src/screens/destination_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          displayMedium:
              TextStyle(color: Colors.white, fontSize: 17, height: 1.7),
          displaySmall: TextStyle(color: Colors.white, fontSize: 14),
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 25,
            height: 1.7,
            fontWeight: FontWeight.bold,
          ),
          headlineLarge: TextStyle(
            color: AppColors.headColor,
            fontSize: 18,
            height: 1.7,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const DestinationScreen(),
    );
  }
}
