import 'package:flutter/material.dart';
import './sitemap.dart';
import 'sitemap.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sitemap',
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Sitemap(),
      ),
    );
  }
}
