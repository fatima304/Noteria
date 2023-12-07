import 'package:flutter/material.dart';
import 'package:noteapp/Conestance.dart';
import 'package:noteapp/splashscreen.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/Models/noteModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/simpleBlocObserver.dart';
import 'package:noteapp/Cubits/NotesCubit/notes_cubit_cubit.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();

  await Hive.initFlutter();
  Hive.registerAdapter(
    NoteModelAdapter(),
  );
  await Hive.openBox<NoteModel>(kNoteBox);

  runApp(
    const NotesApp(),
  );
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Poppins',
          brightness: Brightness.dark,
        ),
        home: const Scaffold(
          body: SplashScreen(),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
