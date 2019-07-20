import 'package:flutter/material.dart';
import 'input_page.dart';
import 'result_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C21),
        scaffoldBackgroundColor: Color(0xFF090C21),
      ),
      home: InputPage(),
      routes: {
        '/initial': (context) => InputPage(),
        '/result': (context) => ResultPage()
      },
    );
  }
}
