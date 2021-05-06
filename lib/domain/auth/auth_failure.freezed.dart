// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  CancelledByUser canceledByUser() {
    return const CancelledByUser();
  }

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  EmailIsAlreadyInUse emailIsAlreadyInUse() {
    return const EmailIsAlreadyInUse();
  }

// ignore: unused_element
  InvalidEmaiAndPassword invalidEmailAndPassword() {
    return const InvalidEmaiAndPassword();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult canceledByUser(),
    @required TResult serverError(),
    @required TResult emailIsAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult canceledByUser(),
    TResult serverError(),
    TResult emailIsAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult canceledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailIsAlreadyInUse(EmailIsAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmaiAndPassword value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult canceledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailIsAlreadyInUse(EmailIsAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmaiAndPassword value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

/// @nodoc
class _$CancelledByUser
    with DiagnosticableTreeMixin
    implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.canceledByUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthFailure.canceledByUser'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult canceledByUser(),
    @required TResult serverError(),
    @required TResult emailIsAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailIsAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return canceledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult canceledByUser(),
    TResult serverError(),
    TResult emailIsAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (canceledByUser != null) {
      return canceledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult canceledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailIsAlreadyInUse(EmailIsAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmaiAndPassword value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailIsAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return canceledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult canceledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailIsAlreadyInUse(EmailIsAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmaiAndPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (canceledByUser != null) {
      return canceledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc
class _$ServerError with DiagnosticableTreeMixin implements ServerError {
  const _$ServerError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.serverError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthFailure.serverError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult canceledByUser(),
    @required TResult serverError(),
    @required TResult emailIsAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailIsAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult canceledByUser(),
    TResult serverError(),
    TResult emailIsAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult canceledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailIsAlreadyInUse(EmailIsAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmaiAndPassword value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailIsAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult canceledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailIsAlreadyInUse(EmailIsAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmaiAndPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $EmailIsAlreadyInUseCopyWith<$Res> {
  factory $EmailIsAlreadyInUseCopyWith(
          EmailIsAlreadyInUse value, $Res Function(EmailIsAlreadyInUse) then) =
      _$EmailIsAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailIsAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailIsAlreadyInUseCopyWith<$Res> {
  _$EmailIsAlreadyInUseCopyWithImpl(
      EmailIsAlreadyInUse _value, $Res Function(EmailIsAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailIsAlreadyInUse));

  @override
  EmailIsAlreadyInUse get _value => super._value as EmailIsAlreadyInUse;
}

/// @nodoc
class _$EmailIsAlreadyInUse
    with DiagnosticableTreeMixin
    implements EmailIsAlreadyInUse {
  const _$EmailIsAlreadyInUse();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.emailIsAlreadyInUse()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.emailIsAlreadyInUse'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailIsAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult canceledByUser(),
    @required TResult serverError(),
    @required TResult emailIsAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailIsAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return emailIsAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult canceledByUser(),
    TResult serverError(),
    TResult emailIsAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailIsAlreadyInUse != null) {
      return emailIsAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult canceledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailIsAlreadyInUse(EmailIsAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmaiAndPassword value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailIsAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return emailIsAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult canceledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailIsAlreadyInUse(EmailIsAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmaiAndPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailIsAlreadyInUse != null) {
      return emailIsAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailIsAlreadyInUse implements AuthFailure {
  const factory EmailIsAlreadyInUse() = _$EmailIsAlreadyInUse;
}

/// @nodoc
abstract class $InvalidEmaiAndPasswordCopyWith<$Res> {
  factory $InvalidEmaiAndPasswordCopyWith(InvalidEmaiAndPassword value,
          $Res Function(InvalidEmaiAndPassword) then) =
      _$InvalidEmaiAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmaiAndPasswordCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmaiAndPasswordCopyWith<$Res> {
  _$InvalidEmaiAndPasswordCopyWithImpl(InvalidEmaiAndPassword _value,
      $Res Function(InvalidEmaiAndPassword) _then)
      : super(_value, (v) => _then(v as InvalidEmaiAndPassword));

  @override
  InvalidEmaiAndPassword get _value => super._value as InvalidEmaiAndPassword;
}

/// @nodoc
class _$InvalidEmaiAndPassword
    with DiagnosticableTreeMixin
    implements InvalidEmaiAndPassword {
  const _$InvalidEmaiAndPassword();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.invalidEmailAndPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.invalidEmailAndPassword'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmaiAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult canceledByUser(),
    @required TResult serverError(),
    @required TResult emailIsAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailIsAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return invalidEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult canceledByUser(),
    TResult serverError(),
    TResult emailIsAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPassword != null) {
      return invalidEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult canceledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailIsAlreadyInUse(EmailIsAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmaiAndPassword value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailIsAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return invalidEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult canceledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailIsAlreadyInUse(EmailIsAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmaiAndPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPassword != null) {
      return invalidEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidEmaiAndPassword implements AuthFailure {
  const factory InvalidEmaiAndPassword() = _$InvalidEmaiAndPassword;
}
