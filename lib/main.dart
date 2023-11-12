// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/pages/bmi_calculation.dart';
import 'package:bmi_calculator/pages/enter_bmi.dart';
import 'package:bmi_calculator/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/enterBmi': (context) => EnterBmi(),
        '/bmiCal': (context) => BmiCal(),
      },
    );
  }
}
