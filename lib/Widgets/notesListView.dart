import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/notesItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final data = const [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: NotesItem(),
          );
        },
      ),
    );
  }
}
