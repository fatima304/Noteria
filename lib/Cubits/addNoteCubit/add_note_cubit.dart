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

  addNote(NoteModel note) async {
    try {
      emit(AddNoteSuccess());
      var notesBox = Hive.box<NoteModel>(kNoteBox);
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}