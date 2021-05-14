import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:notes_ddd/domain/core/failures.dart';
import 'package:notes_ddd/domain/core/value_objects.dart';
import 'package:notes_ddd/domain/notes/todo_item.dart';
import 'package:notes_ddd/domain/notes/value_objects.dart';

part 'note.freezed.dart';

@freezed
abstract class Note implements _$Note {
  const factory Note(
      {required UniqueId id,
      required NoteBody body,
      required NoteColor color,
      required List3<TodoItem> todos}) = _Note;

  factory Note.empty() {
    return Note(
        id: UniqueId(),
        body: NoteBody(''),
        color: NoteColor(NoteColor.predefinedColors.first),
        todos: List3(emptyList()));
  }

  const Note._();

  Option<ValueFailure<dynamic>> get failureOption {
    // Failure должны быть одного типа Either<L,R>, поэтому
    // используем body.failureOrUnit (Either<VailureFailure<dynamic>, Unit>) вместо body.value...
    return body.failureOrUnit
        .andThen(todos.failureOrUnit)
        .andThen(todos
            .getOrCrash()
            // User failureOption, not valueFailure
            .map((todoItem) => todoItem.failureOption)
            .filter((o) => o.isSome())
            // Get first element, if no such element return none()
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}
