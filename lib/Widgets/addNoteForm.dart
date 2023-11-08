import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/button.dart';
import 'package:noteapp/Widgets/textField.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, subTitle;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextFormField(
            maxLines: 7,
            hintText: 'Content',
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: 'Add',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(
                  () {},
                );
              }
            },
          )
        ],
      ),
    );
  }
}
