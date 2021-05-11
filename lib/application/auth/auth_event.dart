part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckedRequested() = AuthCheckedRequested;

  const factory AuthEvent.signedOut() = SignedOut;
}
