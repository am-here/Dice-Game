import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Center(child: Text('Dice Game')),
        backgroundColor: Colors.red,
      ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ld = 1, rd = 1;
  void change() {
    setState(() {
      ld = Random().nextInt(6) + 1;
      rd = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  change();
                },
                child: Image.asset('images/dice$ld.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  change();
                },
                child: Image.asset('images/dice$rd.png')),
          ),
        ],
      ),
    );
  }
}
