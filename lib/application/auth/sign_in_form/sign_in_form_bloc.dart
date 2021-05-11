import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_ddd/domain/auth/auth_failure.dart';
import 'package:notes_ddd/domain/auth/i_auth_facade.dart';
import 'package:notes_ddd/domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';

part 'sign_in_form_event.dart';

part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(SignInFormEvent event) async* {
    yield* event.map(
        signInWithGooglePressed: (SignInWithGooglePressed e) async* {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      final failureOrSuccess = await _authFacade.signInWithGoogle();

      yield state.copyWith(
          isSubmitting: false, authFailureOrSuccessOption: some(failureOrSuccess));
    }, signInWithEmailAndPasswordPressed:
            (SignInWithEmailAndPasswordPressed value) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.signInWithEmailAndPassword);
    }, emailChanged: (EmailChanged e) async* {
      yield state.copyWith(
        email: EmailAddress(e.emailStr),
        authFailureOrSuccessOption: none(),
      );
    }, passwordChanged: (PasswordChanged e) async* {
      yield state.copyWith(
        password: Password(e.passwordStr),
        authFailureOrSuccessOption: none(),
      );
    }, registerWithEmailAndPasswordPressed:
            (RegisterWithEmailAndPasswordPressed e) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.registerWithEmailAndPassword);
    });
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function(
              {@required EmailAddress email, @required Password password})
          forwardedCall) async* {
    Either<AuthFailure, Unit> _authFailureOrSuccess;

    final bool isEmailValid = state.email.isValid();
    final bool isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      _authFailureOrSuccess =
          await forwardedCall(email: state.email, password: state.password);
    }

    yield state.copyWith(
        showErrorMessages: true,
        isSubmitting: false,
        authFailureOrSuccessOption: optionOf(_authFailureOrSuccess));
  }
}
