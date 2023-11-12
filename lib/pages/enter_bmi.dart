// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/pages/results.dart';
import 'package:flutter/material.dart';

class EnterBmi extends StatelessWidget {
  const EnterBmi({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0.4,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "B M I  T E S T",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black87,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //title
                Text(
                  "E N T E R  Y O U R  B M I",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),

                //Text Field
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: Center(
                    child: TextField(
                        style: TextStyle(color: Colors.white),
                        controller: controller,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            hintText: "Enter BMI Value",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: Colors.white54,
                            )))),
                  ),
                ),
                //BUTTON
                MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Results(bmi: int.parse(controller.text))));
                  },
                  child: Text(
                    "E N T E R",
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
