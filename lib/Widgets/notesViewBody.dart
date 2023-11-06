import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/customAppBar.dart';
import 'package:noteapp/Widgets/notesItem.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(
        16,
        16,
        16,
        8,
      ),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 10,
          ),
          NotesItem(),
        ],
      ),
    );
  }
}
