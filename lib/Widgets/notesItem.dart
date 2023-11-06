import 'package:flutter/material.dart';
import 'package:noteapp/Views/editNoteView.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

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
          color: Color.fromARGB(255, 46, 105, 48),
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
            title: const Padding(
              padding: EdgeInsets.only(
                bottom: 16,
              ),
              child: Text(
                'Notes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            subtitle: Text(
              'Hello, I\'m Fatma Atef \n 23 years, this is my note, my zone & happy place ',
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
              'April 30, 2001',
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
