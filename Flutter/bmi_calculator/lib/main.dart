import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() => runApp(BmiCalculator());

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF41cbc7),
        scaffoldBackgroundColor: Color(0xFF41cbc7),
      ),
      home: HomePage(),
    );
  }
}
