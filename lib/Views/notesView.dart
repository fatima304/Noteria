import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/addNoteSheet.dart';
import 'package:noteapp/Widgets/notesViewBody.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  25,
                ),
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
    );
  }
}
