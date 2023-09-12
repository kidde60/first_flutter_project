import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: const Text('My First App'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 20.0),
        child: Column(children: [
          const Text(
            'Hello Professor',
            style: TextStyle(
              color: Color.fromARGB(255, 32, 28, 28),
              fontSize: 24.0,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage('profile.jpeg'),
            radius: 50.0,
          ),
          Divider(
            height: 50.0,
            color: Colors.grey[900],
          ),
        ]),
      ),
    );
  }
}
