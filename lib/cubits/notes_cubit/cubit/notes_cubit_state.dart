part of 'notes_cubit.dart';

@immutable
sealed class NoteCubitState {}

final class NoteCubitInitial extends NoteCubitState {}
final class NotesLoading extends NoteCubitState {}
final class NotesSuccess extends NoteCubitState {

 final List<NoteModel> notes;

  NotesSuccess(this.notes);
}
final class NotesFailure extends NoteCubitState {
  final String errMessage;

  NotesFailure(this.errMessage);
}

