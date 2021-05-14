import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_ddd/domain/core/failures.dart';
import 'package:notes_ddd/domain/core/value_objects.dart';

import 'value_objects.dart';

part 'todo_item.freezed.dart';

@freezed
abstract class TodoItem implements _$TodoItem {
  const factory TodoItem(
      {required UniqueId id,
      required TodoName name,
      required bool done}) = _TodoItem;

  const TodoItem._();

  factory TodoItem.empty() =>
      TodoItem(id: UniqueId(), name: TodoName(''), done: false);

  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold((l) => some(l), (r) => none());
  }
}
