import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:notes_ddd/domain/core/failures.dart';
import 'package:notes_ddd/domain/core/value_objects.dart';
import 'package:notes_ddd/domain/core/value_transformer.dart';
import 'package:notes_ddd/domain/core/value_validators.dart';

class NoteBody extends ValueObject<String> {
  static const maxLength = 1000;

  @override
  final Either<ValueFailure<String>, String> value;

  factory NoteBody(String value) {
    return NoteBody._(validateMaxStringLength(value, maxLength)
        .flatMap(validateStringNotEmpty));
  }

  const NoteBody._(this.value);
}

class TodoName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory TodoName(String input) {
    return TodoName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const TodoName._(this.value);
}

class List3<T> extends ValueObject<KtList<T>> {
  static const maxLength = 3;

  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  factory List3(KtList<T> input) {
    return List3._(
      validateMaxListLength(input, maxLength),
    );
  }

  const List3._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}

class NoteColor extends ValueObject<Color> {
  static const List<Color> predefinedColors = [
    Color(0xfffafafa),
    Color(0xfffa8072),
    Color(0xfffedc56),
    Color(0xffd0f0c0),
    Color(0xfffca3b7),
    Color(0xff997950),
    Color(0xfffffdd0),
  ];

  @override
  final Either<ValueFailure<Color>, Color> value;

  factory NoteColor(Color input) {
    return NoteColor._(right(makeColorOpaque(input)));
  }

  const NoteColor._(this.value);
}
