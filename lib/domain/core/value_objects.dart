import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:notes_ddd/domain/core/failures.dart';

import 'errors.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), (r) => r);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueObject &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'Value{value: $value}';
  }
}
