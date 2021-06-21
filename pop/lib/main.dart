import 'package:flutter/material.dart';
import './pop.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'PTU STUDENTS';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: MyAlert(),
      ),
    );
  }
}
