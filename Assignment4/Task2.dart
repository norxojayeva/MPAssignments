import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("My Assignment4 Task2.")),
        body: const Center(child: Task2()),
      ),
    );
  }
}

class Task2 extends StatelessWidget {
  const Task2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment:CrossAxisAlignment.start,
    children: const <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
);
  }
}

