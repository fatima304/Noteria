import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/button.dart';
import 'package:noteapp/Models/noteModel.dart';
import 'package:noteapp/Widgets/textField.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Widgets/colorsPalette.dart';
import 'package:noteapp/Cubits/addNoteCubit/add_note_cubit.dart';

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
            onChanged: null,
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
            onChanged: null,
          ),
          const SizedBox(
            height: 20,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                text: 'Add',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var fromattedCurrentDate =
                        DateFormat.yMd().format(currentDate);

                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      color: Colors.amber.value,
                      date: fromattedCurrentDate,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(
                      () {},
                    );
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}
