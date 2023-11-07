import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/TextField.dart';

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
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.check,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              hintText: 'Content',
              maxLines: 7,
              
            ),
          ],
        ),
      ),
    );
  }
}
