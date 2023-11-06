import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 24,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 145, 56, 121),
        borderRadius: BorderRadius.circular(
          10,
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
            'Hello, this is my note',
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
    );
  }
}
