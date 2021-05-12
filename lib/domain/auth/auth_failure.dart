import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.canceledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailIsAlreadyInUse() = EmailIsAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPassword() = InvalidEmaiAndPassword;
}