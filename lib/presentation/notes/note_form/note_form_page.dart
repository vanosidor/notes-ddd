import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/notes/note_form/note_form_bloc.dart';
import 'package:notes_ddd/di/injection.dart';
import 'package:notes_ddd/domain/notes/note.dart';
import 'package:notes_ddd/presentation/notes/note_form/misc/todo_item_presentaition_classes.dart';
import 'package:notes_ddd/presentation/notes/note_form/widgets/add_todo_tile_widget.dart';
import 'package:notes_ddd/presentation/notes/note_form/widgets/body_field_widget.dart';
import 'package:notes_ddd/presentation/notes/note_form/widgets/color_field_widget.dart';
import 'package:notes_ddd/presentation/notes/note_form/widgets/todo_list_widget.dart';
import 'package:notes_ddd/presentation/routes/router.gr.dart';
import 'package:provider/provider.dart';

class NoteFormPage extends StatelessWidget {
  final Note? editedNote;

  const NoteFormPage({Key? key, required this.editedNote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NoteFormBloc>()
        ..add(NoteFormEvent.initialized(optionOf(editedNote))),
      child: BlocConsumer<NoteFormBloc, NoteFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
              () => () {},
              (either) => either.fold(
                  (f) => FlushbarHelper.createError(
                        message: f.map(
                            insufficientPermission: (f) =>
                                'Insufficient permissions 🔒',
                            unexpected: (f) =>
                                'Unexpected error occurred, please contact to support',
                            unableToUpdate: (f) => 'Unable to update'),
                      ).show(context),
                  (_) => {
                        context.router.popUntil((route) =>
                            route.settings.name == NotesOverviewRoute.name),
                      }));
        },
        builder: (context, state) => Stack(
          children: <Widget>[
            const NoteFormPageScaffold(),
            SavingInProgressOverlay(
              isSaving: state.isSaving,
            ),
          ],
        ),
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({Key? key, required this.isSaving})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.7) : Colors.transparent,
        child: Center(
          child: Opacity(
            opacity: isSaving ? 1.0 : 0.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Loading',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NoteFormPageScaffold extends StatelessWidget {
  const NoteFormPageScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<NoteFormBloc, NoteFormState>(
          // ! make it change only on initializing
          buildWhen: (previous, current) =>
              previous.isEditing != current.isEditing,
          builder: (context, state) => state.isEditing
              ? const Text('Edit Note')
              : const Text('Create Note'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () =>
                context.read<NoteFormBloc>().add(const NoteFormEvent.saved()),
          )
        ],
      ),
      body: BlocBuilder<NoteFormBloc, NoteFormState>(
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (context) => FormTodos(),
            child: Form(
                autovalidateMode: state.showErrorMessage
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: SingleChildScrollView(
                  child: Column(
                    children: const <Widget>[
                      BodyField(),
                      ColorField(),
                      AddTodoTile(),
                      TodoList(),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
