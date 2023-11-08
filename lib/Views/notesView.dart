import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Widgets/addNoteSheet.dart';
import 'package:noteapp/Widgets/notesViewBody.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/Cubits/NotesCubit/notes_cubit_cubit.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        body: const NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(30, 30),
                  topRight: Radius.elliptical(30, 30),
                ),
              ),
              context: context,
              builder: (context) {
                return const AddNoteSheet();
              },
            );
          },
          child: const Icon(
            FontAwesomeIcons.pen,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
