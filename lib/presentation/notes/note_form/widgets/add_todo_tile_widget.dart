import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:notes_ddd/application/notes/note_form/note_form_bloc.dart';
import 'package:notes_ddd/presentation/notes/note_form/misc/build_context_x.dart';
import 'package:notes_ddd/presentation/notes/note_form/misc/todo_item_presentaition_classes.dart';

class AddTodoTile extends StatelessWidget {
  const AddTodoTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteFormBloc, NoteFormState>(
      buildWhen: (p, c) => p.note.todos.isFull != c.note.todos.isFull,
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        context.formTodos = state.note.todos.value.fold(
            (f) => listOf<TodoItemPrimitive>(),
            (todoItemList) => todoItemList
                .map((todoItem) => TodoItemPrimitive.fromDomain(todoItem)));
      },
      builder: (context, state) => ListTile(
          enabled: !state.note.todos.isFull,
          leading: const Icon(Icons.add),
          title: const Text('Add a todo'),
          onTap: () {
            context.formTodos =
                context.formTodos.plusElement(TodoItemPrimitive.empty());
            context
                .read<NoteFormBloc>()
                .add(NoteFormEvent.todosChanged(context.formTodos));
          }),
    );
  }
}
