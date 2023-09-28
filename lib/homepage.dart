import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'resultpage.dart'; // Import your resultpage widget

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController _weight = TextEditingController();
  final TextEditingController _height = TextEditingController();
  double finalBmi = 0;

  void bmiCalculator() {
    int var1 = int.tryParse(_weight.text) ?? 0;
    int var2 = int.tryParse(_height.text) ?? 0;

    if (var1 > 0 && var2 > 0) {
      setState(() {
        finalBmi = (var1 / pow((var2 / 100), 2));
      });

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(finalBmi: finalBmi),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Invalid Input"),
            content: const Text("Please enter valid weight and height values."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 215, 230),
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
