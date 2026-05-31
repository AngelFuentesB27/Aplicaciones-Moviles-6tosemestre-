import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple[600],
        title: Text('Tarea5P3', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Fuentes Balderrama', style: TextStyle(fontSize: 30)),
            SizedBox(height: 100),
            Text('Angel de Jesus', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
