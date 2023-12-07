import 'package:flutter/material.dart';
import 'package:noteapp/Models/noteModel.dart';
import 'package:noteapp/Views/Widgets/editNoteViewBody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return EditNoteViewBody(
      note: note,
    );
  }
}
