import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:kt_dart/kt.dart';
import 'package:notes_ddd/application/notes/note_form/note_form_bloc.dart';
import 'package:notes_ddd/domain/notes/value_objects.dart';
import 'package:notes_ddd/presentation/notes/note_form/misc/build_context_x.dart';
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
          itemCount: formTodos.value.size,
          itemBuilder: (context, index) => TodoTile(
            key: ValueKey(context.formTodos[index].id),
            index: index,
          ),
        ),
      ),
    );
  }
}

class TodoTile extends HookWidget {
  final int index;

  const TodoTile({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo =
        context.formTodos.getOrElse(index, (_) => TodoItemPrimitive.empty());

    final TextEditingController _todoTextEditingController =
        useTextEditingController(text: todo.name);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          extentRatio: 0.35,
          children: [
            SlidableAction(
              icon: Icons.delete,
              label: 'Delete',
              backgroundColor: Colors.red,
              onPressed: (context) {
                context.formTodos = context.formTodos.minusElement(todo);
                context
                    .read<NoteFormBloc>()
                    .add(NoteFormEvent.todosChanged(context.formTodos));
              },
            )
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
          ),
          child: ListTile(
            leading: Checkbox(
              onChanged: (value) {
                context.formTodos = context.formTodos.map((listTodo) =>
                    listTodo == todo
                        ? listTodo.copyWith(done: value!)
                        : listTodo);
                context
                    .read<NoteFormBloc>()
                    .add(NoteFormEvent.todosChanged(context.formTodos));
              },
              value: todo.done,
            ),
            title: TextFormField(
              controller: _todoTextEditingController,
              maxLength: TodoName.maxLength,
              decoration: const InputDecoration(
                  hintText: 'Todo', border: InputBorder.none, counterText: ''),
              onChanged: (value) {
                context.formTodos = context.formTodos.map((listTodo) =>
                    listTodo == todo
                        ? listTodo.copyWith(name: value)
                        : listTodo);
                context
                    .read<NoteFormBloc>()
                    .add(NoteFormEvent.todosChanged(context.formTodos));
              },
              validator: (value) {
                return context.read<NoteFormBloc>().state.note.todos.value.fold(
                    (_) => null,
                    (todoList) => todoList[index].name.value.fold(
                        (f) => f.maybeMap(
                            empty: (_) => 'Cannot be empty',
                            exceedingLength: (limit) =>
                                'Must be shorter than ${limit.max} symbols',
                            multiline: (_) => 'Has to be in a single line',
                            orElse: () => null),
                        (r) => null));
              },
            ),
          ),
        ),
      ),
    );
  }
}
