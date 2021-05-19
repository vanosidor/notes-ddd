import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:notes_ddd/domain/notes/i_note_repository.dart';
import 'package:notes_ddd/domain/notes/note.dart';
import 'package:notes_ddd/domain/notes/note_failure.dart';
import 'package:notes_ddd/domain/notes/value_objects.dart';
import 'package:notes_ddd/presentation/notes/note_form/misc/todo_item_presentaition_classes.dart';

part 'note_form_bloc.freezed.dart';

part 'note_form_event.dart';

part 'note_form_state.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepository;

  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial());

  @override
  Stream<NoteFormState> mapEventToState(
    NoteFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialNoteOption.fold(
            () => state,
            (initialNote) => state.copyWith(
                  note: initialNote,
                  isEditing: true,
                ));
      },
      colorChanged: (e) async* {
        yield state.copyWith(
            note: state.note.copyWith(
              color: NoteColor(e.color),
            ),
            saveFailureOrSuccessOption: none());
      },
      bodyChanged: (e) async* {
        yield state.copyWith(
            note: state.note.copyWith(body: NoteBody(e.bodyStr)),
            saveFailureOrSuccessOption: none());
      },
      todosChanged: (e) async* {
        yield state.copyWith(
            note: state.note.copyWith(
                todos: List3(
                    e.todos.map((todoPrimitive) => todoPrimitive.toDomain()))));
      },
      saved: (e) async* {
        Either<NoteFailure, Unit>? failureOrSuccess;

        yield state.copyWith(
            isSaving: true, saveFailureOrSuccessOption: none());

        if (state.note.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _noteRepository.update(state.note)
              : await _noteRepository.create(state.note);
        }

        yield state.copyWith(
            isSaving: false,
            showErrorMessage: true,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
    );
  }
}
