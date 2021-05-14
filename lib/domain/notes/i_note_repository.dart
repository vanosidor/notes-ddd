import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:notes_ddd/domain/notes/note.dart';

import 'note_failure.dart';

abstract class INoteRepository {
  // watch all notes
  // watch uncompleted

  // CUD (CRUD but read methods up)

  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  Stream<Either<NoteFailure, Unit>> create(Note note);
  Stream<Either<NoteFailure, Unit>> update(Note note);
  Stream<Either<NoteFailure, Unit>> delete(Note note);
}