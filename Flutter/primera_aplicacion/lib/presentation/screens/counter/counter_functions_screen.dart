import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 1000000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 186, 11, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        title: Text(
          'App de Mi Nati',
          style: TextStyle(color: Color.fromARGB(255, 186, 11, 255)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            icon: Icon(
              Icons.refresh_rounded,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Que tan hermosa es mi nati:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),
            Text(
              '$clickCounter',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.black,
            foregroundColor: Color.fromARGB(255, 186, 11, 255),
            shape: StadiumBorder(),
            onPressed: () {
              setState(() {});
              clickCounter = 1000000;
            },
            child: Icon(Icons.favorite),
          ),

          SizedBox(height: 15),
          FloatingActionButton(
            backgroundColor: Colors.black,
            foregroundColor: Color.fromARGB(255, 186, 11, 255),
            shape: StadiumBorder(),
            onPressed: () {
              setState(() {});
              clickCounter++;
            },
            child: Icon(Icons.plus_one_outlined),
          ),

          SizedBox(height: 15),
        ],
      ),
    );
  }
}
