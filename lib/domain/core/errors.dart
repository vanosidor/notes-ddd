import 'package:notes_ddd/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Bad state for ValueFailure. Application terminating... ';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}

class NotAuthenticatedError extends Error {}
