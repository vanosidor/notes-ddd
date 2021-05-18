import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:notes_ddd/domain/notes/i_note_repository.dart';
import 'package:notes_ddd/domain/notes/note.dart';
import 'package:notes_ddd/domain/notes/note_failure.dart';

part 'note_watcher_bloc.freezed.dart';

part 'note_watcher_event.dart';

part 'note_watcher_state.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final INoteRepository _noteRepository;
  StreamSubscription<Either<NoteFailure, KtList<Note>>>?
      _notesStreamSubscription;

  NoteWatcherBloc(this._noteRepository)
      : super(const NoteWatcherState.initial());

  @override
  Stream<NoteWatcherState> mapEventToState(
    NoteWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const NoteWatcherState.loadInProgress();
        // BAD APPROACH (Only for one event of watchAllStarted not watchUpCompleted)
        // because stream never going to stop emitting states. Need make event notes received
        // yield* _noteRepository.watchAll().map((failureOrNotes) =>
        //     failureOrNotes.fold((f) => NoteWatcherState.failure(f),
        //         (r) => NoteWatcherState.loadSuccess(r)));
        await _notesStreamSubscription?.cancel();
        _notesStreamSubscription =
            _noteRepository.watchAll().listen((failureOrNotes) {
          add(NoteWatcherEvent.notesReceived(failureOrNotes));
        });
      },
      watchUpCompletedStarted: (e) async* {
        yield const NoteWatcherState.loadInProgress();
        await _notesStreamSubscription?.cancel();
        _notesStreamSubscription =
            _noteRepository.watchUncompleted().listen((failureOrNotes) {
          add(NoteWatcherEvent.notesReceived(failureOrNotes));
        });
      },
      notesReceived: (e) async* {
        yield e.failureOrNotes.fold((f) => NoteWatcherState.failure(f),
            (r) => NoteWatcherState.loadSuccess(r));
      },
    );
  }

  @override
  Future<void> close() async {
    await _notesStreamSubscription?.cancel();
    return super.close();
  }
}
