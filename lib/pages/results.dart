// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Results extends StatelessWidget {
  final double bmi;
  bool isHealthy = true;
  final _controller = PageController();
  Results({
    super.key,
    required this.bmi,
  });
  void checkHealth(double bmi) {
    if (bmi >= 18.5 && bmi <= 24.9) {
      isHealthy = true;
    } else if (bmi < 18.5 || bmi > 24.9) {
      isHealthy = false;
    }
  }

  String bmiResults(double bmi) {
    String result = "";
    if (bmi > 18.5 && bmi <= 24.9) {
      result = "Normal Weight";
    } else if (bmi <= 18.5) {
      result = "Underweight";
    } else if (bmi > 24.9 && bmi <= 29.9) {
      result = "Overweight";
    } else if (bmi > 29.9 && bmi < 34.9) {
      result = "Class 1 Obesity";
    } else if (bmi > 34.9 && bmi <= 39.9) {
      result = "Class 2 Obesity";
    } else if (bmi > 39.9) {
      result = "Severely Obese";
    }
    return result;
  }

  Widget _suggestions(double bmi) {
    if (bmi <= 18.5) {
      return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black87,
              width: 0.8,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.tips_and_updates,
                  size: 30,
                  color: Colors.amber,
                ),
                Text(
                  "Eating more frequently",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Choosing food with lots of nutrients",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Exercise",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      );
    } else if (bmi > 24.9) {
      return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black87,
              width: 0.8,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.tips_and_updates,
                  size: 30,
                  color: Colors.amber,
                ),
                Text(
                  "Eat a balanced diet",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Do not overeat",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Weigh-loss Exercise",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black87,
              width: 0.8,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.tips_and_updates,
                  size: 30,
                  color: Colors.amber,
                ),
                Text(
                  "Eat a Healthy Diet",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Be Physically Active",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Limit inactivity",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    checkHealth(bmi);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Y O U R  R E S U L T S",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        elevation: 0.5,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: SizedBox(
                height: 500,
                child: PageView(
                  controller: _controller,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black87,
                            width: 0.8,
                          ),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.health_and_safety,
                                size: 30,
                                color: Colors.green,
                              ),
                              Text(
                                isHealthy
                                    ? "You Are Healthy!"
                                    : "You are at risk of some health issues!",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black87,
                            width: 0.8,
                          ),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.scale,
                                size: 30,
                              ),
                              Text(
                                bmiResults(bmi),
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: _suggestions(bmi),
                    )
                  ],
                ),
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: JumpingDotEffect(
                activeDotColor: Colors.black87,
                dotColor: Colors.black12,
                dotHeight: 30,
                dotWidth: 30,
                spacing: 16,
                jumpScale: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
