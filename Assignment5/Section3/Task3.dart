import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ParentCounter(),
    );
  }
}

class ParentCounter extends StatefulWidget {
  const ParentCounter({super.key});

  @override
  State<ParentCounter> createState() => _ParentCounterState();
}

class _ParentCounterState extends State<ParentCounter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Parent-Child Counter/Task3")),
      body: Center(
        child: CounterControls(
          counter: _counter,
          onIncrement: _increment,
          onDecrement: _decrement,
        ),
      ),
    );
  }
}

class CounterControls extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CounterControls({
    super.key,
    required this.counter,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Count: $counter",
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 40),
       Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    ElevatedButton(
      onPressed: onDecrement,
      child: const Text("-"),
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 40),
      ),
    ),
    const SizedBox(width: 20),
    ElevatedButton(
      onPressed: onIncrement,
      child: const Text("+"),
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 40),
      ),
    ),
  ],
),
      ],
    );
  }
}
