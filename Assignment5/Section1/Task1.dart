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
      title: 'Profile Card Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Profile Cards')),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              StaticProfileCard(),
              SizedBox(height: 20),
              InteractiveProfileCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class StaticProfileCard extends StatelessWidget {
  const StaticProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text('John Doe'),
        subtitle: Text('john.doe@email.com'),
      ),
    );
  }
}

class InteractiveProfileCard extends StatefulWidget {
  const InteractiveProfileCard({super.key});

  @override
  State<InteractiveProfileCard> createState() =>
      _InteractiveProfileCardState();
}

class _InteractiveProfileCardState extends State<InteractiveProfileCard> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text('Jane Smith'),
        subtitle: Text('jane.smith@email.com'),
      ),
    );
  }
}
