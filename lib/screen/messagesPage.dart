import 'package:flutter/material.dart';

class messagesPage extends StatefulWidget {
  const messagesPage({super.key});

  @override
  State<messagesPage> createState() => _messagesPageState();
}

class _messagesPageState extends State<messagesPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('data',
          style: TextStyle(
            color: Colors.black,
          )),
    );
  }
}
