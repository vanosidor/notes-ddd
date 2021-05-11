import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_ddd/domain/auth/auth_failure.dart';
import 'package:notes_ddd/domain/auth/i_auth_facade.dart';
import 'package:notes_ddd/domain/auth/user.dart' as domain_user;
import 'package:notes_ddd/domain/auth/value_objects.dart';
import 'package:notes_ddd/infrastructure/auth/firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
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
      final UserCredential _firebaseAuthResult =
          await _firebaseAuth.createUserWithEmailAndPassword(
              email: emailStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailIsAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {@required EmailAddress email, @required Password password}) async {
    final emailStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final UserCredential _firebaseAuthResult = await _firebaseAuth
          .signInWithEmailAndPassword(email: emailStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPassword());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.canceledByUser());
      }
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return _firebaseAuth
          .signInWithCredential(credential)
          .then((r) => right(unit));
    } on FirebaseAuthException {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<domain_user.User>> getSignedUser() {
    return Future.value(optionOf(_firebaseAuth.currentUser.toDomain()));
  }

  @override
  Future<void> signOut() {
    return Future.wait([_googleSignIn.signOut(), _firebaseAuth.signOut()]);
  }
}
