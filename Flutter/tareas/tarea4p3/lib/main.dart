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
        backgroundColor: const Color.fromARGB(255, 100, 255, 100),
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text(
            'Tarea4P3',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Aprendiendo a Hacer', style: TextStyle(fontSize: 20)),
              Text('Aplicaciones Moviles'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          foregroundColor: Color.fromARGB(255, 0, 0, 0),
          child: Icon(Icons.bolt),
          onPressed: () {},
        ),
      ),
    );
  }
}
