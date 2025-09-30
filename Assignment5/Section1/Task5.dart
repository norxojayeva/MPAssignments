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
      home: Scaffold(
        body: Center(
          child: UserNameForm(),
        ),
      ),
    );
  }
}

class UserNameForm extends StatefulWidget {
  const UserNameForm({super.key});

  @override
  State<UserNameForm> createState() => _UserNameFormState();
}

class _UserNameFormState extends State<UserNameForm> {
  String _userName = ""; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Enter your name",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              setState(() {
                _userName = value; 
              });
            },
          ),
          const SizedBox(height: 20),
          Text(
            _userName.isEmpty ? "Your name, please?" : "Hello, $_userName!",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,                    color:Colors.deepPurple),
          ),
        ],
      ),
    );
  }
}
