import 'package:flutter/material.dart';
import 'package:noteapp/Views/notesView.dart';

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
      theme: ThemeData(
        // fontFamily: '',
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
    );
  }
}
