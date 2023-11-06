import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/button.dart';
import 'package:noteapp/Widgets/textField.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        16,
        25,
        16,
        16,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextField(
              hintText: 'Title',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomTextField(
              hintText: 'Content',
              maxLines: 7,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              text: 'Add',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
