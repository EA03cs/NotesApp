part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}
class NotesSuccess extends NotesState {}
class NotesFailure extends NotesState {}
class NotesLoading extends NotesState {}