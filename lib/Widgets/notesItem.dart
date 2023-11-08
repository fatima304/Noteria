import 'package:flutter/material.dart';
import 'package:noteapp/Models/noteModel.dart';
import 'package:noteapp/Views/editNoteView.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
        ),
        decoration: const BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            trailing: const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(
                bottom: 16,
              ),
              child: Text(
                note.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            subtitle: Text(
              note.subTitle,
              style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontSize: 17,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
            ),
            child: Text(
              note.date,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white.withOpacity(0.6),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
