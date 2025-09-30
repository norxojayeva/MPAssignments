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
      home: ColorBoxPage(),
    );
  }
}

class ColorBoxPage extends StatefulWidget {
  const ColorBoxPage({super.key});

  @override
  State<ColorBoxPage> createState() => _ColorBoxPageState();
}

class _ColorBoxPageState extends State<ColorBoxPage> {
  Color _boxColor = Colors.grey; 

  void _changeColor(Color newColor) {
    setState(() {
      _boxColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Color Box")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: _boxColor,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _changeColor(Colors.red),
                  child: const Text(
                    "Red",
                    style: TextStyle (color:Colors.red)
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _changeColor(Colors.green),
                  child: const Text("Green", style: TextStyle(color:Colors.green)),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _changeColor(Colors.blue),
                  child: const Text("Blue", style:TextStyle(color:Colors.blue)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
