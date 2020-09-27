import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:planner_edu/pages/Homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage());
  }
}