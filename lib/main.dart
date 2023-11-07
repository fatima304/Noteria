import 'package:flutter/material.dart';
import 'package:noteapp/Conestance.dart';
import 'package:noteapp/splashscreen.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/Models/noteModel.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(
    NoteModelAdapter(),
  );
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
        brightness: Brightness.dark,
      ),
      home: const Scaffold(
        body: SplashScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
