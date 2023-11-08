import 'package:flutter/material.dart';
import 'package:noteapp/Conestance.dart';
import 'package:noteapp/splashscreen.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/Models/noteModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/simpleBlocObserver.dart';
import 'package:noteapp/Cubits/addNoteCubit/add_note_cubit.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();

  await Hive.initFlutter();
  await Hive.openBox<NoteModel>(kNoteBox);
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          // fontFamily: '',
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
