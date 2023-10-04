import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'resultpage.dart'; // Import your resultpage widget

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  double? finalBmi;

  void _calculateBMI() {
    double weight = double.tryParse(_weightController.text) ?? 0.0;
    double height = double.tryParse(_heightController.text) ?? 0.0;

    if (weight > 0 && height > 0) {
      // BMI formula: BMI = weight (kg) / (height (m) * height (m))
      double bmi = weight / ((height / 100) * (height / 100));

      // Navigate to the result page with the calculated BMI
      Navigator.push(
        context as BuildContext,
        MaterialPageRoute(
          builder: (context) => ResultPage(finalBmi: bmi),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 103, 181, 232),
      appBar: AppBar(
        title: Text(
          "BMI",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 49, 234, 169),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter Weight (in kg)",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 100,
                    color: Colors.white.withOpacity(0.8),
                    child: TextField(
                      controller: _weightController,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Enter Weight",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 36, 218, 181),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter Height (in cm)",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 200,
                    width: 350,
                    color: Colors.white.withOpacity(0.8),
                    child: TextField(
                      controller: _heightController,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Enter Height",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: _calculateBMI,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  right: 12.0,
                  top: 8.0,
                  bottom: 8.0,
                ),
                child: Text(
                  "Compute BMI",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
