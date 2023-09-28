import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'dart:math';

class ResultPage extends StatelessWidget {
  final double finalBmi;

  const ResultPage({super.key, required this.finalBmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffb2d8d8),
      appBar: AppBar(
        backgroundColor: const Color(0xff008080),
        title: Text(
          "BMI Result",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Your BMI is",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )
            )
            ]
            )
            )
            );
  }
  }
