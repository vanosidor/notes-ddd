part of 'note_form_bloc.dart';

@freezed
class NoteFormState with _$NoteFormState {
  const factory NoteFormState(
      {required Note note,
      required bool showErrorMessage,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<NoteFailure, Unit>>
          saveFailureOrSuccessOption}) = _NoteFormState;

  factory NoteFormState.initial() => NoteFormState(
      note: Note.empty(),
      showErrorMessage: false,
      isSaving: false,
      saveFailureOrSuccessOption:
          some(left(const NoteFailure.unableToUpdate())),
      isEditing: false);
}
