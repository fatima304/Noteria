import 'package:flutter/material.dart';
import 'package:noteapp/Conestance.dart';
import 'package:noteapp/Models/noteModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Views/Widgets/textField.dart';
import 'package:noteapp/Views/Widgets/colorsPalette.dart';
import 'package:noteapp/Cubits/NotesCubit/notes_cubit_cubit.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title;
  String? content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Edit Note',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      widget.note.title = title ?? widget.note.title;
                      widget.note.subTitle = content ?? widget.note.subTitle;
                      widget.note.save();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.check,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                onChanged: (value) {
                  title = value;
                },
                hintText: widget.note.title,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                onChanged: (value) {
                  content = value;
                },
                hintText: widget.note.subTitle,
                maxLines: 7,
              ),
              EditColors(
                note: widget.note,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditColors extends StatefulWidget {
  const EditColors({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditColors> createState() => _EditColorsState();
}

class _EditColorsState extends State<EditColors> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = colors.indexOf(
      Color(widget.note.color),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 2,
                vertical: 2,
              ),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = colors[index].value;
                  setState(() {});
                },
                child: ColorPalette(
                  color: colors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
