// ignore: unused_import
import 'package:bmi_calc1/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  final TextEditingController _weight = TextEditingController();
// Removed 'final' keyword
  final TextEditingController _height = TextEditingController();
// Removed 'final' keyword
  double finalBmi = 0;

  void bmiCalculator() {
    int var1 = int.parse(_weight.text);
    int var2 = int.parse(_height.text);
    setState(() {
      finalBmi = (var1 / pow((var2 / 100), 2));
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 38, 76, 202),
      appBar: AppBar(
        title: Text(
          'BMI',
          style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Enter Height (in m)",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 10, 84, 97),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                controller: _height,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(hintText: "Enter height"),
              ),
            ),
            Text(
              "Enter weight (in kg)",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 10, 84, 97),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                controller: _weight,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(hintText: "Enter weight"),
              ),
            ),
            ElevatedButton(
              onPressed: () => bmiCalculator(),
              // Changed _computeBMI() to bmiCalculator()
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12.0,
                  top: 8.0,
                  bottom: 8.0,
                ),
                child: Text(
                  "Compute",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
