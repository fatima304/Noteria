import 'package:flutter/material.dart';
import 'package:noteapp/Models/noteModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Views/Widgets/notesItem.dart';
import 'package:noteapp/Cubits/NotesCubit/notes_cubit_cubit.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final data = const [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: NotesItem(
                  note: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
