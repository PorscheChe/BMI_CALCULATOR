// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:bmi_calculator/pages/results.dart';
import 'package:flutter/material.dart';

class BmiCal extends StatelessWidget {
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  BmiCal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "C A L C U L A T E  Y O U R  B M I",
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        elevation: 0.4,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
              child: TextField(
                controller: heightController,
                decoration: InputDecoration(
                    hintText: "Enter Height (CM)",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                      ),
                    )),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
              child: TextField(
                controller: weightController,
                decoration: InputDecoration(
                    hintText: "Enter Weight (KG)",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                      ),
                    )),
              ),
            ),
            MaterialButton(
              onPressed: () {
                var weight = double.parse(weightController.text);
                var height = double.parse(heightController.text);
                double bmi = (weight / height / height) * 10000;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Results(
                      bmi: bmi,
                    ),
                  ),
                );
              },
              color: Colors.black87,
              textColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text("E N T E R"),
            ),
          ],
        ),
      ),
    );
  }
}
