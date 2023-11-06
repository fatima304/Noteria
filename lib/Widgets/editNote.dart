import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/textField.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 40, 16, 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Edit Note',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Icon(
                  Icons.check_box,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hintText: 'Content',
              maxLines: 7,
            ),
          ],
        ),
      ),
    );
  }
}
