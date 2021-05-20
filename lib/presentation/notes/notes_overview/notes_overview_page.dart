import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/auth/auth_bloc.dart';
import 'package:notes_ddd/application/notes/note_actor/note_actor_bloc.dart';
import 'package:notes_ddd/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:notes_ddd/di/injection.dart';
import 'package:notes_ddd/presentation/notes/notes_overview/widgets/notes_overview_body_widget.dart';
import 'package:notes_ddd/presentation/notes/notes_overview/widgets/uncompleted_switch.dart';
import 'package:notes_ddd/presentation/routes/router.gr.dart';

class NotesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherBloc>(
          create: (context) => getIt<NoteWatcherBloc>()
            ..add(const NoteWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<NoteActorBloc>(
          create: (context) => getIt<NoteActorBloc>(),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                  unauthenticated: (_) =>
                      context.router.replace(const SignInRoute()),
                  orElse: () {});
            },
          ),
          BlocListener<NoteActorBloc, NoteActorState>(
              listener: (context, state) => state.maybeMap(
                  deleteFailure: (state) => FlushbarHelper.createError(
                      message: state.noteFailure.map(
                        insufficientPermission: (_) =>
                            'Insufficient permissions',
                        unableToUpdate: (_) => 'Unable to update',
                        unexpected: (_) =>
                            'Unexpected error occurred while deleting, ',
                      ),
                      duration: const Duration(seconds: 5)),
                  orElse: () {})),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Notes'),
            leading: IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () =>
                  context.read<AuthBloc>().add(const AuthEvent.signedOut()),
            ),
            actions: const <Widget>[
              UncompletedSwitch(),
            ],
          ),
          body: const NotesOverviewBody(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // TODO navigate to NoteFormPAge
              /*context.router.push()*/
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
