import 'package:dartz/dartz.dart';
import 'package:notes_ddd/domain/auth/auth_failure.dart';
import 'package:notes_ddd/domain/auth/user.dart';
import 'package:notes_ddd/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress email, required Password password});

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress email, required Password password});

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Option<User>> getSignedUser();

  Future<void> signOut();
}
