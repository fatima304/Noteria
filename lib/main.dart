import 'package:flutter/material.dart';

void main() {
  runApp(
    const NotesApp(),
  );
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Notes App'),
          backgroundColor: const Color.fromARGB(255, 117, 66, 101),
        ),
      ),
    );
  }
}
