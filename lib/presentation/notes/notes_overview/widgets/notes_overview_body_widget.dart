import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:notes_ddd/presentation/notes/notes_overview/widgets/critical_failure_display_widget.dart';
import 'package:notes_ddd/presentation/notes/notes_overview/widgets/error_note_card.dart';

import 'note_card.dart';

class NotesOverviewBody extends StatelessWidget {
  const NotesOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
      builder: (context, state) => state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          failure: (state) {
            return CriticalFailureDisplay(failure: state.failure);
          },
          loadSuccess: (state) {
            return ListView.builder(
              itemCount: state.notes.size,
              itemBuilder: (context, index) {
                final note = state.notes[index];
                if (note.failureOption.isSome()) {
                  return ErrorNoteCard(
                    note: note,
                  );
                } else {
                  return NoteCard(
                    note: note,
                  );
                }
              },
            );
          }),
    );
  }
}
