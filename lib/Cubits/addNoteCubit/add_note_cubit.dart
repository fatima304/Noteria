import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/Conestance.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/Models/noteModel.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit()
      : super(
          AddNoteInitial(),
        );
  Color color = const Color(0xff856088);

  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      await notesBox.add(note);
      emit(
        AddNoteSuccess(),
      );
    } catch (e) {
      emit(AddNoteFailure(
        e.toString(),
      ));
    }
  }
}
