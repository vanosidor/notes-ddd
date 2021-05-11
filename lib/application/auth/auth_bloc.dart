import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:notes_ddd/domain/auth/i_auth_facade.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(authCheckedRequested: (_) async* {
      final userOption = await _authFacade.getSignedUser();
      yield userOption.fold(() => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated());
    }, signedOut: (_) async* {
      await _authFacade.signOut();
      yield const AuthState.unauthenticated();
    });
  }
}
