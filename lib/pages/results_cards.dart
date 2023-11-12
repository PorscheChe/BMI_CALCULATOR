// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ResultCards extends StatelessWidget {
  final int bmi;
  const ResultCards({
    super.key,
    required this.bmi,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 350,
      decoration: BoxDecoration(color: Colors.black87),
      child: Stack(),
    );
  }
}
