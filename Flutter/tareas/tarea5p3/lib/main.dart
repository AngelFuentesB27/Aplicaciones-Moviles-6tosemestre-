import 'package:flutter/material.dart';
import 'package:tarea5p3/screens/listview1_screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ListView1Screen(),
    );
  }
}
