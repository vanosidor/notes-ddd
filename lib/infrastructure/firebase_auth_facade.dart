import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:notes_ddd/domain/auth/auth_failure.dart';
import 'package:notes_ddd/domain/auth/i_auth_facade.dart';
import 'package:notes_ddd/domain/auth/value_objects.dart';

class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {@required EmailAddress email, @required Password password}) async {

    final emailStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final _firebaseAuthResult =
          await _firebaseAuth.createUserWithEmailAndPassword(
              email: emailStr, password: passwordStr);
    } on FirebaseAuthException {
      // TODO complete
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {@required EmailAddress email, @required Password password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }
}
