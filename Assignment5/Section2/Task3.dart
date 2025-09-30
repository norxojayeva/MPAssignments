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
      home: VisibilityTogglePage(),
    );
  }
}

class VisibilityTogglePage extends StatefulWidget {
  const VisibilityTogglePage({super.key});

  @override
  State<VisibilityTogglePage> createState() => _VisibilityTogglePageState();
}

class _VisibilityTogglePageState extends State<VisibilityTogglePage> {
  bool _isVisible = false;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task3")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: _isVisible,
              child: const Text(
                "Hello, it's Rosalee!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: _toggleVisibility,
              child: Text(_isVisible ? "Eyes are open" : "Eyes are close"),
            ),
          ],
        ),
      ),
    );
  }
}
