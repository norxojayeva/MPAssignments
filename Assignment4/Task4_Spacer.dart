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
    return Row(
      children: <Widget>[
        Container(width: 100, height: 100, color: Colors.red),
        const Spacer(), 
/* indeed spacer created empty space between them,
 but green is not visiable, so I added width:100*/
        Container( width:100, height: 100, color: Colors.green),
      ],
    );
  }
}
