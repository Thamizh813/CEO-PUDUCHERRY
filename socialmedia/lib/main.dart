import './socialmedia.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lottie Animation',
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SocialMedia(),
      ),
    );
  }
}
