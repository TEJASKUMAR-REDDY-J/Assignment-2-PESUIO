import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'dart:math';
// ignore: unused_import
import 'homepage.dart';

class ResultPage extends StatelessWidget {
  final double finalBmi;

  ResultPage({required this.finalBmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Result"),
      ),
      backgroundColor: Color.fromARGB(255, 173, 216, 230), // Light blue background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your BMI is:",
              style: TextStyle(fontSize: 24, color: Colors.blue), // Dark blue text color
            ),
            Text(
              finalBmi.toStringAsFixed(1), // Display BMI with one decimal place
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Dark blue text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
