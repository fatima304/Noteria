import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/Conestance.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/Models/noteModel.dart';
part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
List<NoteModel> notes = notesBox.values.toList();
      emit(
        NotesCubitSuccess(
         notes ,
        ),
      );
    } catch (e) {
      emit(
        NotesCubitFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
