import 'package:flutter/material.dart';
// ignore: duplicate_import
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(
    MyApp()
  );
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 23, 78, 26)),
        useMaterial3: true,
      ),
      home:Homepage(),
    );
  }
}