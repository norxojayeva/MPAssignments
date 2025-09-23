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
        appBar: AppBar(title: const Text("Lab 5 - Task 4")),
        body: const Center(
          child: Task4(),
        ),
      ),
    );
  }
}

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( //it acts the same but vertically
      children: <Widget>[
        Expanded( // red row will expand, equally with green one
          flex:1,
          child: Container(
            height: 100,
            width:100,
            color: Colors.red,
          ),
        ),
        Expanded(
            flex:2,
            child: Container(
            height: 100,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
