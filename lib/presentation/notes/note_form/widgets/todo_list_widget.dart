import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/notes/note_form/note_form_bloc.dart';
import 'package:notes_ddd/presentation/notes/note_form/misc/todo_item_presentaition_classes.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.note.todos.isFull != c.note.todos.isFull,
      listener: (context, state) {
        if (state.note.todos.isFull) {
          FlushbarHelper.createAction(
              duration: const Duration(seconds: 5),
              message: 'Want longer lists? Activate premium 😍',
              button: TextButton(
                onPressed: () => {},
                child: const Text('BUY NOW',
                    style: TextStyle(color: Colors.yellow)),
              )).show(context);
        }
      },
      child: Consumer<FormTodos>(
        builder: (context, formTodos, child) => ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) => TodoTile(index: index),
        ),
      ),
    );
  }
}

class TodoTile extends StatelessWidget {
  final int index;

  const TodoTile({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        onChanged: (value) => {},
        value: true,
      ),
    );
  }
}
