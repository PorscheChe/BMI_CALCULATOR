// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BmiCal extends StatelessWidget {
  const BmiCal({super.key});

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
                decoration: InputDecoration(
                    hintText: "Enter Height",
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
                decoration: InputDecoration(
                    hintText: "Enter Weight",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                      ),
                    )),
              ),
            ),
            MaterialButton(
              onPressed: () {},
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
