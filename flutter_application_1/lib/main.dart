import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/menuDrawner.dart';

void main(List<String> args) {
  runApp(firstApp());
}

class firstApp extends StatefulWidget {
  const firstApp({super.key});

  @override
  State<firstApp> createState() => _firstApp();
}

class _firstApp extends State<firstApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CTPI",
      home: menDrawner());
    
  }
}