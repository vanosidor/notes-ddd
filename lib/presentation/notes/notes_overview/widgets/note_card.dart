import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:notes_ddd/application/notes/note_actor/note_actor_bloc.dart';
import 'package:notes_ddd/domain/notes/note.dart';
import 'package:notes_ddd/domain/notes/todo_item.dart';
import 'package:auto_route/auto_route.dart';
import 'package:notes_ddd/presentation/routes/router.gr.dart';

class NoteCard extends StatelessWidget {
  final Note note;

  const NoteCard({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: note.color.getOrCrash(),
      child: InkWell(
        onLongPress: () {
          final noteActorBloc = context.read<NoteActorBloc>();
          showNoteDeletionDialog(context, noteActorBloc);
        },
        onTap: () => context.router.push(NoteFormRoute(editedNote: note)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                note.body.getOrCrash(),
                style: const TextStyle(fontSize: 18),
              ),
              if (note.todos.length > 0) ...[
                const SizedBox(
                  height: 4,
                ),
                Wrap(
                  spacing: 10,
                  children: <Widget>[
                    ...note.todos
                        .getOrCrash()
                        .map((todoItem) => TodoDisplay(todo: todoItem))
                        .iter,
                  ],
                )
              ]
            ],
          ),
        ),
      ),
    );
  }

  Future showNoteDeletionDialog(
      BuildContext context, NoteActorBloc noteActorBloc) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Selected Note'),
              content: Text(
                note.body.getOrCrash(),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('CANCEL'),
                ),
                TextButton(
                  onPressed: () {
                    noteActorBloc.add(NoteActorEvent.deleted(note));
                    Navigator.pop(context);
                  },
                  child: const Text('DELETE'),
                ),
              ],
            ));
  }
}

class TodoDisplay extends StatelessWidget {
  final TodoItem todo;

  const TodoDisplay({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (todo.done)
          Icon(
            Icons.check_box,
            color: Theme.of(context).accentColor,
          ),
        if (!todo.done)
          Icon(
            Icons.check_box_outline_blank,
            color: Theme.of(context).disabledColor,
          ),
        Text(todo.name.getOrCrash()),
      ],
    );
  }
}
