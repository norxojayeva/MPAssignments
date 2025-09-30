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
      appBar: AppBar(title: const Text("Counter with Multiple Children")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterDisplay(counter: _counter), 
            const SizedBox(height: 20),
            CounterControls(
              onIncrement: _increment,
              onDecrement: _decrement,
            ), 
          ],
        ),
      ),
    );
  }
}

class CounterDisplay extends StatelessWidget {
  final int counter;

  const CounterDisplay({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Count: $counter",
      style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    );
  }
}

class CounterControls extends StatelessWidget {
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CounterControls({
    super.key,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onDecrement,
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 35),
          ),
          child: const Text("-"),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: onIncrement,
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 32),
          ),
          child: const Text("+"),
        ),
      ],
    );
  }
}
