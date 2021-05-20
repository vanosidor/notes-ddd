import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:notes_ddd/application/notes/note_watcher/note_watcher_bloc.dart';

class UncompletedSwitch extends HookWidget {
  const UncompletedSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final checked = useState(false);
    final noteWatcherBloc = context.watch<NoteWatcherBloc>();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Checkbox(
          value: checked.value,
          onChanged: (value) {
            checked.value = !checked.value;
            noteWatcherBloc.add(checked.value
                ? const NoteWatcherEvent.watchUpCompletedStarted()
                : const NoteWatcherEvent.watchAllStarted());
          }),
    );
  }
}
