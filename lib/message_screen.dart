import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  final _textController = TextEditingController();
  dynamic userText = 'test';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: const Text('My Messages'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 20.0),
        child: Column(children: [
          Divider(
            height: 50.0,
            color: Colors.grey[900],
          ),
          Container(
            color: Colors.grey[200],
            width: double.infinity,
            height: 50.0,
            child: Row(
              children: [
                Text(userText),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: _textController,
            decoration: InputDecoration(
              hintText: 'What is on mind',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  _textController.clear();
                },
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  userText = _textController.text;
                });
              },
              child: const Text('submit'))
        ]),
      ),
    );
  }
}
