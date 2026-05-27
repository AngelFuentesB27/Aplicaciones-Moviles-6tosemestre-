import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 118, 253, 118),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
          centerTitle: true,
          title: Text('Tarea4P3', style: TextStyle(color: Colors.black)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Aprendiendo a Hacer'),
              Text('Aplicaciones Moviles'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 13, 21, 255),
          foregroundColor: Colors.cyanAccent,
          child: Icon(Icons.exposure_minus_1),
          onPressed: () {},
        ),
      ),
    );
  }
}
