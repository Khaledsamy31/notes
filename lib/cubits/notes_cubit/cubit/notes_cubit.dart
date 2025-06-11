import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/models/note_model.dart';

part 'notes_cubit_state.dart';

class NoteCubit extends Cubit<NoteCubitState> {
  NoteCubit() : super(NoteCubitInitial());

  fetchAllNotes() async{
     

   try {
  var notesBox = Hive.box<NoteModel>(kNotesBox);
     
     List<NoteModel> notes = notesBox.values.toList();
    emit(NotesSuccess(notes));
}  catch (e) {
  emit(NotesFailure(e.toString()));

}
  }
}