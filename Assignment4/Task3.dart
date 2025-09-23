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
        appBar: AppBar(title: const Text("My Assignment4 Task3.")),
        body: const Center(child: Task3()),
      ),
    );
  }
}

class Task3 extends StatelessWidget {
  const Task3 ({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController myController=TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
      TextField(
        controller:myController,
      obscureText:true,
      decoration: InputDecoration(
        icon:Icon(Icons.person),
        border:OutlineInputBorder(),
        labelText:'Enter your password',
      ),
),
      const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            print("User's password: ${myController.text}");
          },
          child: const Text("Show Input in Console"),
          ),
      ],
          
    );
}
      }

